学习笔记
## Store Scraped Data In SQL Database With Scrapy
  http://scrapingauthority.com/scrapy-database-pipeline/
## 在Github上删除某个文件或项目
  https://www.cnblogs.com/fighter007/p/10655478.html
###  命令：
   $ git rm -rf --cached .venv
   
   $ git commit -m "delete .venv"
   
   $ git push origin

## Pandas
    缺失值处理：
    df.dropna(how='any')
    how：筛选方式。‘any’，表示该行/列只要有一个以上的空值，就删除该行/列；‘all’，表示该行/列全部都为空值，就删除该行/列。
    pandas向mysql存储数据的时候，sqlalchemy需要数据库的引擎

## 定时任务
   要用linux的cron定时任务配合，或者用我们最后的celery配合实现
   
   
   
