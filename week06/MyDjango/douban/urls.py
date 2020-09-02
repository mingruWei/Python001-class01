from django.urls import path, re_path

from . import views

urlpatterns = [
    path('/index', views.books_short),
    path('/star', views.books_short_star)

]