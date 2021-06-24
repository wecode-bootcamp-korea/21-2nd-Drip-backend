from django.views           import View
from django.http            import JsonResponse
from django.core.exceptions import FieldError
from django.db.models       import Q

from .models       import Product, check
from users.utils   import login_decorator

class ProductListView(View):
    @login_decorator
    def get(self, request):
        try:
            category_id     = request.GET.get('categoryId', None)
            sub_category_id = request.GET.get('subcategoryId', None)
            sort            = request.GET.get('sortMethod', 'product_id')
            reverse         = bool(request.GET.get('reverse', False))
            offset          = int(request.GET.get('offset', 0))
            limit           = int(request.GET.get('limit', 0))
            user            = request.user

            q = Q()

            if category_id:
                q &= Q(sub_category__category_id=category_id)

            if sub_category_id:
                q &= Q(sub_category_id=sub_category_id)

            products = Product.objects.filter(q)

            if not products:
                return JsonResponse({"MESSAGE": "INVALID_PRODUCTS"}, status=400)

            product_list = [{
                "product_id"    : product.id,
                "product_name"  : product.name,
                "address"       : product.address.split()[0],
                "product_price" : product.price,
                "discount"      : product.discount,
                "product_image" : product.main_image,
                "sellcount"     : product.sell_count,
                "avg_score"     : product.avgscore,
                "date"          : product.date,
                "new"           : product.new,
                "hot"           : product.hot,
                "check"         : check(user, product)
            } for product in products]

            sort_lists = sorted(product_list, key=lambda e: e[sort], reverse=reverse)[offset:limit]
            
            if limit is 0:
	            sort_lists = sorted(product_list, key=lambda e: e[sort], reverse=reverse)

            return JsonResponse({"result": sort_lists}, status=200)

        except ValueError:
            return JsonResponse({"MESSAGE": "DATA_TYPE_ERROR"}, status=400)
        except FieldError:
            return JsonResponse({"MESSAGE": "sortMethod_ERROR"}, status=400)
        except KeyError:
            return JsonResponse({"MESSAGE": "KEY_ERROR"}, status=400)