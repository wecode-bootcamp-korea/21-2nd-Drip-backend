from datetime         import datetime, timedelta

from django.views     import View
from django.http      import JsonResponse
from django.db.models import F, Avg

from products.models  import Product, Search

class SearchView(View):
    def get(self, request):
        try:
            keyword        = request.GET.get('keyword')
            result         = {}
            searched_ranks = Product.objects.only('name').annotate(rank=F('searched__count'))\
                             .order_by('-rank', '-id')[:5]
            result['rank'] = [rank.name for rank in searched_ranks]

            if not keyword:    
                return JsonResponse({'result' : result}, status=200)

            products = Product.objects.select_related('searched', 'sub_category')\
                       .annotate(rating=Avg('review__rating'))\
                       .filter(name__icontains=keyword).order_by('-id')
            filter   = list(products.values_list('id', flat=True))
            hots     = products.order_by('-sell_count')[:10]
            Search.objects.filter(id__in=filter).update(count=F('count')+1)

            result['result'] = [{
                    'product_id': product.id,
                    'name'      : product.name,
                    'price'     : product.price,
                    'image'     : product.main_image,
                    'new'       : True if product.created_at > (datetime.now()-timedelta(days=60))\
                                 else False,
                    'hot'       : True if product in hots else False,
                    'discount'  : product.sub_category.discount,
                    'rating'    : product.rating,
                    } for product in products.iterator()]

            return JsonResponse({'result' : result}, status=200)

        except KeyError:
            return JsonResponse({'message' : 'KEY_ERROR'}, status=400)