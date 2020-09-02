from django.shortcuts import render
from django.http import HttpResponse
from .models import T1
from django.db.models import Avg
# Create your views here.

# 三星级以上电影短评
def books_short_star(request):
    ###  从models取数据传给template  ###
    shorts = T1.objects.all()
   
    # 平均星级
    # star_value = T1.objects.values('n_star')
    star_avg =f" {T1.objects.aggregate(Avg('n_star'))['n_star__avg']:0.1f} "

    # 高于 3 星级（不包括 3 星级）的短评内容和它对应的星级
    condtions = {'n_star__gt': 3}
    shorts_star = shorts.filter(**condtions)

     # 评论数量
    counter = shorts_star.count()
    # return HttpResponse(str(shorts_star.count()))

    return render(request, 'result_star.html', locals())

def books_short(request):
    ###  从models取数据传给template  ###
    shorts = T1.objects.all()
    # 评论数量
    counter = T1.objects.all().count()

    # 平均星级
    # star_value = T1.objects.values('n_star')
    star_avg =f" {T1.objects.aggregate(Avg('n_star'))['n_star__avg']:0.1f} "
    # 情感倾向
    sent_avg =f" {T1.objects.aggregate(Avg('sentiment'))['sentiment__avg']:0.2f} "

    # 正向数量
    queryset = T1.objects.values('sentiment')
    condtions = {'sentiment__gte': 0.5}
    plus = queryset.filter(**condtions).count()

    # 负向数量
    queryset = T1.objects.values('sentiment')
    condtions = {'sentiment__lt': 0.5}
    minus = queryset.filter(**condtions).count()

    # return render(request, 'douban.html', locals())
    return render(request, 'result.html', locals())










