学习笔记
1、requests ，爬虫获得整个网页的DOM内容;与urllib区别：1、内部库，需要引用库内部的包，不方便；2、requests可直接构建get/post请求

2、BeautifulSoup 解析爬取到的网页，可以通过find、findall等方法，以及for...in 循环获得电影的链接和标题内容等内容

3、爬取页面详细信息：Xpath 解析网页，lxml.tree包；xml化处理得到selector；网页开发者模式，copy Xpath,传入selector.xpath内，获取具体标签内的内容。

4、pandas将爬虫结果list保存到csv文件。

5、爬虫的自动翻页功能：模拟点击翻页；推导式，得到包含不同page的urls元组，循环调用函数，BeautifulSoup解析每页的内容，获取所有链接、获取电影名字。

6、scrapy:新建spiders:scrapy startproject spiders；
          创建爬虫文件movies.py：scrapy genspider movies maoyan.com
          启动爬虫 'scrapy crawl movies'
7、allowed_domains，设置允许访问的域名，需要注意。
8、注意在setting.py中开启
        1、USER_AGENT，请求头，否则无法发起请求
        2、DOWNLOAD_DELAY 延时抓取
        3、ITEM_PIPELINES 配置item pipelines，否则无法开启管道存储

总结：1、vscode 工作区配置等，git 使用不熟练（理解还不深入，需要深入理解）
     2、网页爬虫，会遇到网站的反爬虫策略，可加入合适的headers,如cookie;
     3、xpath用法需要多了解
      

