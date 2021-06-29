import json

from logging import log
from django.views import View
from django.http import JsonResponse

from drip_settings import ACCESS_KEY, SECRET_ACCESS_KEY
from users.utils import login_decorator
from .models import Review, Comment

class CommentView(View):
    @login_decorator
    def post(self, request):
        try:
            data    = json.loads(request.body)
            content = data['content']
            user    = request.user
            review  = Review.objects.get(id=data['review'])
        
            Comment.objects.create(
                user    = user,
                content = content,
                review  = review
            )
            return JsonResponse({'message' : 'SUCCESS'}, status = 201)
        except KeyError:
            return JsonResponse({'message' : 'KEY_ERROR'}, status = 400)

    @login_decorator
    def get(self, review_id):
        try:
            comment_list = [{
                'user'    : comment_list.user.id,
                'content' : comment_list.content,
                'review'  : review_id
            }for comment_list in Comment.objects.filter(review_id = review_id)]
            
            return JsonResponse({'result' : comment_list}, status = 200)
        except Review.DoesNotExist:
            return JsonResponse({"message" : 'DOES_NOT_EXIT_REVIEW_ID'}, status = 401)