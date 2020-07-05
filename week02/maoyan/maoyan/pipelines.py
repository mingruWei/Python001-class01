# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://docs.scrapy.org/en/latest/topics/item-pipeline.html


# useful for handling different item types with a single interface
from .wk2_mysql import ConnDB



class MaoyanPipeline:
    def process_item(self, item, spider):
        result=[]
        dbInfo = {
        'host' : 'localhost',
        'port' : 3306,
        'user' : 'root',
        'password' : '123',
        'db' : 'movies'
        }

        sqls = ['select 1', 'select VERSION()']

        title = item['title']
        filmtype = item['filmtype']
        releasetime = item['releasetime']
        # output = f'|{title}|\t|{filmtype}|\t|{releasetime}|\n\n'
        # with open('./maoyanmovie.txt', 'a+', encoding='utf-8') as article:
        #     article.write(output)
        result.append(title)
        result.append(filmtype)
        result.append(releasetime)
        values = ",".join(result)
        # db=ConnDB(dbInfo,sqls)
        # db.insert(values,"maoyan_movie")
        return item
