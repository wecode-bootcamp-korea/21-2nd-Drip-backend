from products.views import ProductDetailView, ProductListView
from django.urls import path

urlpatterns = [
    path('', ProductListView.as_view()),
    path('/<product_id>', ProductDetailView.as_view())
]
