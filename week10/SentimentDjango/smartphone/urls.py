from django.urls import path, re_path

from . import views

urlpatterns = [
    # path('/index', views.books_short),
    path('/comments', views.sentiment),
    path('/search', views.search),
    # path('/search/<str:name>', views.search),
]