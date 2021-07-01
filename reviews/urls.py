from django.urls import path
from .views import ReviewView, CommentView

urlpatterns = [
    path('', ReviewView.as_view()),
    path('/<int:product_id>', ReviewView.as_view()),
    path('/comment', CommentView.as_view()),
    path('/comment/<int:review_id>', CommentView.as_view())
]