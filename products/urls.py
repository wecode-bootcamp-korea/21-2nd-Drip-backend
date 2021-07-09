from products.views import ProductDetailView, ProductListView, Fa
from django.urls import path

urlpatterns = [
    path('', ProductListView.as_view()),
    path('/<product_id>', ProductDetailView.as_view()),
    path('/search/top', Fa.as_view()),
]
