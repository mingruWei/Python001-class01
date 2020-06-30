import scrapy
from scrapy.selector import Selector
from maoyan.items import MaoyanItem

class MoviesSpider(scrapy.Spider):
    name = 'movies'
    allowed_domains = ['maoyan.com']
    start_urls = ['https://maoyan.com/films?showType=3']
    def start_requests(self):
        url = f'https://maoyan.com/films?showType=3'
        yield scrapy.Request(url=url, callback=self.parse)
        # url 请求访问的网址
        # callback 回调函数，引擎回将下载好的页面(Response对象)发给该方法，执行数据解析
        # 这里可以使用callback指定新的函数，不是用parse作为默认的回调参数

    def parse(self, response):
        item = MaoyanItem()
        print(response.text)
        movies = Selector(response=response).xpath('//div[@class="movie-hover-info"]')[:10]
        # movies = Selector(response=response).xpath('//div[contains(@class,"movie-hover-info") and position()<10]')
        # movies = Selector(response=response).xpath('//div[contains(@class,"movie-hover-info")')[:10]
      
        for movie in movies:
            # 电影名字
            title = movie.xpath('./div[1]/span[1]/text()').extract_first().strip()
            print(title)
            # 电影类型
            filmtype_title = movie.xpath('./div[2]/span/text()').extract_first().strip()
            filmtype = movie.xpath('./div[2]/text()').extract()[1].strip()
            print(filmtype)
            # 上映时间
            rt_titile =  movie.xpath('./div[4]/span/text()').extract_first().strip()
            releasetime =  movie.xpath('./div[4]/text()').extract()[1].strip()
            print(releasetime)
            item['title'] = title
            item['filmtype'] =filmtype_title + filmtype
            item['releasetime'] =rt_titile + releasetime
            yield item