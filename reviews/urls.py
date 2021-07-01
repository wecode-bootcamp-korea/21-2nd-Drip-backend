from django.urls import path
from .views import ReviewView

urlpatterns = [
    path('', ReviewView.as_view()),
    path('/<int:product_id>', ReviewView.as_view())
]