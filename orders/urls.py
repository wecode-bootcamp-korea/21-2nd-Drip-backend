from django.urls import path

from .views import OrderView, BookMark

urlpatterns = [
    path('', OrderView.as_view()),
    path('/bookmark', BookMark.as_view())
]