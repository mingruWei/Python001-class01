from django.shortcuts import render
from django.http import HttpResponse
from .models import T1
from django.db.models import Avg
from django.core import serializers

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

#搜索短评
def search(request, **kwargs):

    shorts =  T1.objects.filter(short__contains=kwargs['name'])

    ret = serializers.serialize("json", shorts)
    return HttpResponse(ret)












