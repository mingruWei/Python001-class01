学习笔记
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

