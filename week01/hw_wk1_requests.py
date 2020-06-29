import requests
import pandas as pd
import time
from bs4 import BeautifulSoup as bs

user_agent = 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.97 Safari/537.36'
cookie = '__mta=174504861.1593257343153.1593275282623.1593275330807.56; uuid_n_v=v1; uuid=6087A280B86911EAA2F937AFDFBC83F6DA108F55DA274078A5F88C8DA73DD56B; _csrf=b8c53f79adc5863bc412cf5e6bcf4c8be49335e2b5b6cba991f45c2038c6dc23; _lxsdk_cuid=172f589b84bc8-05489fdf68edd2-63131f79-100200-172f589b84cc8; mojo-uuid=47160b5006e204b90681478f9e4c0ac8; mojo-session-id={"id":"61044272784571af1a6032424f00decf","time":1593262614094}; Hm_lvt_703e94591e87be68cc8da0da7cbd0be2=1593267941,1593267985,1593268058,1593268145; sajssdk_2015_cross_new_user=1; sensorsdata2015jssdkcross=%7B%22distinct_id%22%3A%22172f68993c422b-03ef8acca5e1f8-63131f79-1049088-172f68993c7362%22%2C%22first_id%22%3A%22%22%2C%22props%22%3A%7B%22%24latest_traffic_source_type%22%3A%22%E7%9B%B4%E6%8E%A5%E6%B5%81%E9%87%8F%22%2C%22%24latest_search_keyword%22%3A%22%E6%9C%AA%E5%8F%96%E5%88%B0%E5%80%BC_%E7%9B%B4%E6%8E%A5%E6%89%93%E5%BC%80%22%2C%22%24latest_referrer%22%3A%22%22%7D%2C%22%24device_id%22%3A%22172f68993c422b-03ef8acca5e1f8-63131f79-1049088-172f68993c7362%22%7D; _lxsdk=6087A280B86911EAA2F937AFDFBC83F6DA108F55DA274078A5F88C8DA73DD56B; __mta=174504861.1593257343153.1593275282623.1593275329212.56; mojo-trace-id=182; Hm_lpvt_703e94591e87be68cc8da0da7cbd0be2=1593275331; _lxsdk_s=172f5da25c4-98b-30a-f73%7C%7C273'
header = { 'user-agent':user_agent,
        'Cookie':cookie,
        'Referer':'https://maoyan.com/board',
        'Host':'maoyan.com',
        'X-Requested-With':'superagent',
        "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9",
        "Accept-Language": "zh-CN,zh;q=0.9",
        "Accept-Encoding": "gzip, deflate, br"}


myurl = 'https://maoyan.com/films?showType=3'

response = requests.get(myurl,headers=header)

bs_info = bs(response.text, 'html.parser')
      
count=0
list_result=[]
# Python 中使用 for in 形式的循环,Python使用缩进来做语句块分隔
for tags in bs_info.find_all('div', attrs={'class': 'movie-item-hover'}):
    if count<10:
        count = count+1
    else: break

    time.sleep(2)
    #电影名称
    filmname =tags.find('span',attrs={'class': 'name'}).text
    print(filmname)
    #上映时间
    releasetime =releasetime =  tags.find('div',attrs={'class': 'movie-hover-title movie-hover-brief'}).text
    #电影类型      
    # filmtype = tags.find('span',attrs={'class': 'hover-tag'}).text
    filmtype = tags.find_all('div',attrs={'class': 'movie-hover-title'})[1].text
        
    print(filmtype)
    print(releasetime)

    mylist = [filmname, releasetime, filmtype]
    list_result.append(mylist)


    

    
movie1 = pd.DataFrame(data = list_result)

# windows需要使用gbk字符集
movie1.to_csv('./movie_maoyan.csv', encoding='utf8', index=False, header=False)



