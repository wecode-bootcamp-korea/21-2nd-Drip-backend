from products.views import ProductAPIView, ProductsAPIView
from django.urls import path

urlpatterns = [
    # path('', ProductListView, name= 'product'),
    # path('/<product_id>', ProductDetailView.as_view()),
    # path('/search/top', Fa.as_view()),
    path('/<str:pk>', ProductsAPIView.as_view()),
    path('', ProductAPIView.as_view()),
]
