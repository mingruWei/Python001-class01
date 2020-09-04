学习笔记

## 开发文档
https://docs.djangoproject.com/zh-hans/2.2/
## Django 的版本

Django 最新 3.0 版本，目前较多的是 2.2.13（LTS）

$ pip install --upgrade django==2.2.13

$ django-admin startproject MyDjango

manage.py 整个项目的管理

python manage.py help

## /settings.py 项目的配置文件

开发模式：DEBUG=True
生产环境：加入wsgi功能

INSTALLED_APPS
#### 注册自己的APP
'index',

TEMPLATES APP_DIRS=True 再APP里（index）内定义template

## 创建一个主页应用
$ python manage.py startapp index

models.py 和views.py

## 启动服务
$python manage.py runserver

## 带变量的 URL

path('<int:year>', views.myyear),

## URLconf
MyDjango/urls.py 文件中的 urlpatterns 列表
从上向下依次匹配

## view 视图

  HttpResponse(‘Hello world’) HTTP 状态码 200，请求已成功被服务器接收  
  
  HttpResponseRedirect(‘/admin/’) HTTP 状态码 302，重定向 Admin 站点的 URL
  
  HttpResponsePermanentRedirect(‘/admin/’) HTTP 状态码 301，永久重定向 Admin 站点URL
  
  HttpResponseBadRequest(‘BadRequest’) HTTP 状态码 400，访问的页面不存在或者请求错误
  
  HttpResponseNotFound(‘NotFound’) HTTP 状态码 404，页面不存在或者网页的 URL 失效
  
  HttpResponseForbidden(‘NotFound’) HTTP 状态码 403，没有访问权限
  
  HttpResponseNotAllowed(‘NotAllowedGet’) HTTP 状态码 405，不允许使用该请求方式
  
  HttpResponseSeverError(‘SeverError’) HTTP 状态码 500，服务器内容错误

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

## 数据库已经存在表了，反向生成model
$python manage.py inspectdb > models.py

QuerySet更像一个字典，可以用Python方法做一些处理
