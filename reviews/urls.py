from django.urls import path
from reviews.views import ReviewView, LikeView, CommentView

urlpatterns = [
    path('', ReviewView.as_view()),
    path('/<int:product_id>', ReviewView.as_view()),
    path('/comment', CommentView.as_view()),
    path('/comment/<int:review_id>', CommentView.as_view()),
    path('/like', LikeView.as_view()),
    path('/like/<int:review_id>', LikeView.as_view())
]