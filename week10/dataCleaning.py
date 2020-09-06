#!/usr/bin/env python
# coding=utf-8

import pandas as pd

from snownlp import SnowNLP

from sqlalchemy import create_engine

 
import time
 
# 格式化成2016-03-20 11:45:39形式
now =  time.strftime("%Y-%m-%d", time.localtime()) 
print(now)
# import pymysql
# conn = pymysql.connect(host = 'localhost',port = 3306,user = 'root',password = '123',db = 'smzdm',charset = 'utf8')
conn = create_engine('mysql://root:123@localhost:3306/smzdm?charset=utf8',echo=True)
df = pd.read_sql('select * from smartphone',con = conn)
print(f"df.shape{df.shape}")
# 删除缺失值
df.dropna(how='any')
print(df.shape)
# df.columns = ['id','sentiment','name', 'comments']

# 封装一个情感分析的函数
def _sentiment(text):
    s = SnowNLP(text)
    return s.sentiments

df["sentiment"] = df.comments.apply(_sentiment)
df["create_date"]=now
print(df.head())
# df.to_csv('smartphone_sentiments.csv', index=False)

# 数据清洗、舆情分析结果存入数据库smartphone_sentiment
df.to_sql('smartphone_sentiment',con = conn,if_exists='append',index=False)