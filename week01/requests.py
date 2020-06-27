import requests
from bs4 import BeautifulSoup as bs

user_agent = 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36'

header = {'user-agent':user_agent}

myurl = 'https://maoyan.com/board/4'

response = requests.get(myurl,headers=header)

bs_info = bs(response.text, 'html.parser')

def get_url_type(myurl_type):
    myurl_type = 'https://maoyan.com/board/4'

    response = requests.get(myurl,headers=header)
    
    # Python 中使用 for in 形式的循环,Python使用缩进来做语句块分隔
    for tags in bs_info.find_all('div', attrs={'class': 'movie-brief-container'}):
        for atag in tags.find_all('a',):
            # 获取电影类型
            print(atag.text)





