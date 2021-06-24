from django.urls import path

from users.views import KakaoSigninView

urlpatterns = [
    path('/signin', KakaoSigninView.as_view()),
]