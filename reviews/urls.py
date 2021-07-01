from django.urls import path
from .views import ReviewView, LikeView

urlpatterns = [
    path('', ReviewView.as_view()),
    path('/<int:product_id>', ReviewView.as_view()),
    path('/like', LikeView.as_view()),
    path('/like/<int:review_id>', LikeView.as_view())
]