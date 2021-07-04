import json, math
from datetime               import datetime, timedelta
from json.decoder           import JSONDecodeError

from django.http.response   import JsonResponse
from django.views           import View
from django.db.models       import  Avg, F
from django.db              import transaction
from django.core.exceptions import MultipleObjectsReturned

from orders.models          import Order, Status
from products.models        import Product
from users.utils            import login_decorator

class OrderView(View):
    # @transaction.atomic
    @login_decorator
    def post(self, request):
        try:
            data       = json.loads(request.body)
            product_id = data['product_id']
            
            if Order.objects.filter(user=request.user, product_id=product_id, status=1).exists():
                order_item = Order.objects.filter(user=request.user, product_id=product_id, status=1)
                order_item.update(status_id=2)
                return JsonResponse({'message' : 'SUCCESS'}, status=201)

            order = Order.objects.create(
                product = Product.objects.get(id=product_id),
                status  = Status.objects.get(id=2),
                user    = request.user
            )
            order.product.sell_count = F('sell_count')+1
            order.product.save()

            return JsonResponse({'message' : 'SUCCESS'}, status=201)

        except KeyError:
            return JsonResponse({'message' : 'KEY_ERROR'}, status=400)

        except JSONDecodeError:
            return JsonResponse({'message' : 'EMPTY_BODY_DATA'}, status=400)

        except Product.DoesNotExist:
            return JsonResponse({'message' : 'PRODUCT_NOT_EXIST'}, status=400)

        except MultipleObjectsReturned:
            return JsonResponse({'message' : 'MULTIPLE_OBJECTS_RETURNED'}, status=400)
    
    @login_decorator
    def get(self, request):
        try:
            status = int(request.GET.get('status', 2))
            offset = int(request.GET.get('offset', 0))
            limit  = int(request.GET.get('limit', 4))
            
            products = Order.objects.select_related('product', 'product__sub_category')\
                       .annotate(rating=Avg('product__review__rating')).filter(status_id=status).order_by('-created_at')
            
            if status == 2:
                products = products.filter(user=request.user)

            if status == 3:
                products = products.filter(user=request.user, product__date__lte=datetime.now())

            products = products[offset:offset+limit]
            hots     = Product.objects.only('sell_count').order_by('-sell_count')[:10]

            result = {
                'user_info' : {
                    'name'          : request.user.name,
                    'profile_image' : request.user.profile_image
                }}

            result['result'] = [{
                'product_id' : product.product.id,
                'name'       : product.product.name,
                'price'      : product.product.price,
                'image'      : product.product.main_image,
                'new'        : True if product.product.created_at > (datetime.now()-timedelta(days=30))\
                               else False,
                'hot'        : True if product.product in hots else False,
                'discount'   : product.product.sub_category.discount,
                'rating'     : product.rating
                } for product in products]

            result['pages'] = math.ceil(len(result['result'])/limit-offset)
            
            return JsonResponse({'result' : result}, status=200)

        except KeyError:
            return JsonResponse({'message' : 'KEY_ERROR'}, status=400)

class BookMark(View):
    @login_decorator
    def post(self, request):
        try:
            data       = json.loads(request.body)
            product_id = data['product_id']

            order, created = Order.objects.get_or_create(
                product = Product.objects.get(id=product_id),
                status  = Status.objects.get(id=1),
                user    = request.user
            )

            if not created:
                order.delete()
                return JsonResponse({'message' : 'SUCCESS'}, status=204)

            return JsonResponse({'message' : 'SUCCESS'}, status=201)

        except KeyError:
            return JsonResponse({'message' : 'KEY_ERROR'}, status=400)

        except JSONDecodeError:
            return JsonResponse({'message' : 'EMPTY_BODY_DATA'}, status=400)        

        except MultipleObjectsReturned:
            return JsonResponse({'message' : 'MULTIPLE_OBJECTS_RETURNED'}, status=400)
    
    @login_decorator
    def get(self, request):
        try:    
            offset = int(request.GET.get('offset', 0))
            limit  = int(request.GET.get('limit', 4))
            
            hots     = Product.objects.only('sell_count').order_by('-sell_count')[:10]
            products = Order.objects.select_related('product', 'product__sub_category')\
                       .filter(user_id=request.user.id, status_id=1)\
                       .annotate(rating=Avg('product__review__rating'))\
                       .order_by('-created_at')[offset:offset+limit]

            result = {
                'result' : [{
                    'product_id' : product.product.id,
                    'name'       : product.product.name,
                    'price'      : product.product.price,
                    'image'      : product.product.main_image,
                    'new'        : True if product.product.created_at > (datetime.now()-timedelta(days=30))\
                                else False,
                    'hot'        : True if product.product in hots else False,
                    'discount'   : product.product.sub_category.discount,
                    'rating'     : product.rating
                    } for product in products]
            }

            result['pages'] = math.ceil(len(result['result'])/limit-offset)
            
            return JsonResponse({'result' : result}, status=200)

        except KeyError:
            return JsonResponse({'message' : 'KEY_ERROR'}, status=400)