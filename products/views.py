from django.views           import View
from django.http            import JsonResponse
from django.core.exceptions import FieldError
from django.db.models       import Q

# Create your views here.
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

            if limit is 0:
                sort_lists = sorted(product_list, key=lambda e: e[sort], reverse=reverse)
            else:
                sort_lists = sorted(product_list, key=lambda e: e[sort], reverse=reverse)[offset:limit]
            return JsonResponse({"result": sort_lists}, status=200)

        except ValueError:
            return JsonResponse({"MESSAGE": "DATA_TYPE_ERROR"}, status=400)
        except FieldError:
            return JsonResponse({"MESSAGE": "sortMethod_ERROR"}, status=400)
        except KeyError:
            return JsonResponse({"MESSAGE": "KEY_ERROR"}, status=400)

class ProductDetailView(View):
    @login_decorator
    def get(self, request, product_id):
        try:
            offset = int(request.GET.get('offset', 0))
            limit  = int(request.GET.get('limit', 4))
            user   = request.user

            product = Product.objects.get(id=product_id)

            product_list = {
                "product_id"    : product.id,
                "product_name"  : product.name,
                "address"       : product.address,
                "product_price" : product.price,
                "discount"      : product.discount,
                "product_image" : product.main_image,
                "avg_score"     : product.avgscore,
                "description"   : product.description,
                "check"         : check(user, product)
            }

            MD_recommends = Product.objects.filter(sub_category_id=product.sub_category_id).order_by('?')
            recommends_list = [{
                "product_id"    : recommends.id,
                "product_name"  : recommends.name,
                "address"       : recommends.address.split()[0],
                "product_price" : recommends.price,
                "discount"      : recommends.discount,
                "product_image" : recommends.main_image,
                "avg_score"     : recommends.avgscore
            } for recommends in MD_recommends]

            return JsonResponse({"result": {"Detail_info": product_list, "recommend": recommends_list[offset:limit]}}, status=200)
        except Product.DoesNotExist:
            return JsonResponse({"MESSAGE": "INVALID_PRODUCTS"}, status=400)
