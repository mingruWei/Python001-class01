from django.shortcuts import render
from django.http import HttpResponse
from .models import SmartphoneSentiment
from django.db.models import Avg
from django.core import serializers
from django.db.models import Q

# Create your views here.

# 三星级以上电影短评
def sentiment(request):
    ###  从models取数据传给template  ###
    sentiments = SmartphoneSentiment.objects.all()
   
     # 评论数量'
    counter = sentiments.count()


    # 情感倾向
    sent_avg =f" {SmartphoneSentiment.objects.aggregate(Avg('sentiment'))['sentiment__avg']:0.2f} "

    # 正向数量
    queryset = SmartphoneSentiment.objects.values('sentiment')
    condtions = {'sentiment__gte': 0.5}
    plus = queryset.filter(**condtions).count()

     # 负向数量
    queryset = SmartphoneSentiment.objects.values('sentiment')
    condtions = {'sentiment__lt': 0.5}
    minus = queryset.filter(**condtions).count()    


    return render(request, 'result.html', locals())

#搜索评论
def search(request, **kwargs):
    create_date = request.GET.get('create_date')
    comments = request.GET.get('comments')
    if comments!='' and create_date!='':
        q1 = Q()
        q1.connector = 'AND'
        q1.children.append(('comments__contains', comments))
        q1.children.append(('create_date', create_date))
        sentiments =  SmartphoneSentiment.objects.filter(q1)
    elif  create_date!='':
        print(create_date)
        sentiments =  SmartphoneSentiment.objects.filter(create_date__contains=create_date)
    elif  comments!='':
        sentiments =  SmartphoneSentiment.objects.filter(comments__contains=comments)



    # table.object.filter(Q(title__startswith='key1') | Q(title__startswith='key2'))
    ret = serializers.serialize("json", sentiments)
    return HttpResponse(ret)
