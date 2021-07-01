import boto3, json

from logging                     import log
from django.db.models.aggregates import Count
from django.views                import View
from django.http                 import JsonResponse
from datetime                    import datetime

from drip_settings   import ACCESS_KEY, SECRET_ACCESS_KEY
from users.utils     import login_decorator
from .models         import Like, Review
from products.models import Product

class ReviewView(View):
    @login_decorator
    def post(self, request):
        try:
            user    = request.user
            content = request.POST['content']
            rating  = request.POST['rating']
            product = Product.objects.get(id=request.POST['product'])
            
            s3_client = boto3.client(
                's3',
                aws_access_key_id     = ACCESS_KEY,
                aws_secret_access_key = SECRET_ACCESS_KEY
            )
            
            image      = request.FILES['filename']
            image_time = (str(datetime.now())).replace(" ","")
            image_type = (image.content_type).split("/")[1]                                     
            
            s3_client.upload_fileobj(
                image,
                "dripawsbucket21",
                image_time+"."+image_type,
                ExtraArgs = {
                    "ContentType" : image.content_type
                }
            )

            image_url = "https://dripawsbucket21.s3.ap-northeast-2.amazonaws.com/"+image_time+"."+image_type

            Review.objects.create(
                user      = user,
                content   = content,
                rating    = rating,
                image_url = image_url if image else None,
                product   = product,
            )
            return JsonResponse({'result' : 'SUCCESS'}, status = 201)

        except KeyError:
            return JsonResponse({'message' : 'KEY_ERROR'}, status = 400)

    @login_decorator
    def get(self, request, product_id):
        user    = request.user
        order   = request.GET.get('order')

        order_conditions = {
            'new' : '-created_at',
            'old' : 'created_at',
            'like' : '-like_count',
            'unlike' : 'like_count',
        }

        reviews  = Review.objects.filter(product_id=product_id).annotate(like_count = Count('like')).order_by(order_conditions.get(order, '-created_at'))
            
        review_list = [{
            'created_at'   : review.created_at,
            'user'         : review.user.id,
            'content'      : review.content,
            'rating'       : review.rating,
            'product'      : product_id,
            'like_count'   : review.like_count,
            'review_count' : reviews.count(),
            'image_url'    : review.image_url,
            'like'         : Like.objects.filter(user_id = user.id, review_id = review.id).exists(),
            'user_image'   : review.user.profile_image
            } for review in reviews]
        return JsonResponse({'result' : review_list}, status = 200)

class LikeView(View):
    @login_decorator
    def post(self, request):
        try:
            data      = json.loads(request.body)
            user      = request.user
            review_id = data['review_id']

            if not Review.objects.filter(id = review_id).exists():
                return JsonResponse({'message' : 'INVALID_REVIEW'}, status = 401)

            if not Like.objects.filter(user = user, review_id = review_id).exists():
                Like.objects.create(user = user, review_id = review_id)
                return JsonResponse({'message' : 'SUCCESS'}, status= 201)

        except KeyError:
            return JsonResponse({'message' : 'KEY_ERROR'}, status = 400)

    def delete(self, request, review_id):
        Like.objects.filter(user = request.user, review_id = review_id).delete()
        return JsonResponse({'message' : 'SUCCESS'}, status = 204)