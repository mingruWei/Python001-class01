import scrapy
from scrapy.selector import Selector
from maoyan.items import MaoyanItem

class MoviesSpider(scrapy.Spider):
    name = 'movies'
    allowed_domains = ['maoyan.com']
    start_urls = ['https://maoyan.com/films?showType=3']
    def start_requests(self):
        url = f'https://maoyan.com/films?showType=3'
        # cookie='__mta=217289641.1593279081967.1593431723730.1593499363711.10; uuid_n_v=v1; uuid=6087A280B86911EAA2F937AFDFBC83F6DA108F55DA274078A5F88C8DA73DD56B; _lxsdk_cuid=172f589b84bc8-05489fdf68edd2-63131f79-100200-172f589b84cc8; mojo-uuid=47160b5006e204b90681478f9e4c0ac8; sensorsdata2015jssdkcross=%7B%22distinct_id%22%3A%22172f68993c422b-03ef8acca5e1f8-63131f79-1049088-172f68993c7362%22%2C%22first_id%22%3A%22%22%2C%22props%22%3A%7B%22%24latest_traffic_source_type%22%3A%22%E7%9B%B4%E6%8E%A5%E6%B5%81%E9%87%8F%22%2C%22%24latest_search_keyword%22%3A%22%E6%9C%AA%E5%8F%96%E5%88%B0%E5%80%BC_%E7%9B%B4%E6%8E%A5%E6%89%93%E5%BC%80%22%2C%22%24latest_referrer%22%3A%22%22%7D%2C%22%24device_id%22%3A%22172f68993c422b-03ef8acca5e1f8-63131f79-1049088-172f68993c7362%22%7D; _lxsdk=6087A280B86911EAA2F937AFDFBC83F6DA108F55DA274078A5F88C8DA73DD56B; _csrf=c6c42dcf99a8c7cb2628b3bbbbfd6cfbc1c18bce1836adf3f6f49f93975de469; Hm_lvt_703e94591e87be68cc8da0da7cbd0be2=1593431419,1593495420,1593502511,1593912563; mojo-session-id={"id":"18c1610b93a00cc03ece66c11ffe69ba","time":1593912562948}; mojo-trace-id=4; Hm_lpvt_703e94591e87be68cc8da0da7cbd0be2=1593912590; __mta=217289641.1593279081967.1593499363711.1593912589731.11; _lxsdk_s=1731c9794f8-e26-75b-89f%7C%7C7'
        # header = { 'Cookie':cookie,
        # 'Host':'maoyan.com',
        # 'X-Requested-With':'superagent',
        # "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9",
        # "Accept-Language": "zh-CN,zh;q=0.9",
        # "Accept-Encoding": "gzip, deflate, br"}
        try:
            yield scrapy.Request(url=url, callback=self.parse)
        except Exception as e:
            print("****************************************")
            print(e)
            print("****************************************")
        # url 请求访问的网址
        # callback 回调函数，引擎回将下载好的页面(Response对象)发给该方法，执行数据解析
        # 这里可以使用callback指定新的函数，不是用parse作为默认的回调参数

    def parse(self, response):
        item = MaoyanItem()
        # print(response.text)
        movies = Selector(response=response).xpath('//div[@class="movie-hover-info"]')[:10]
        # movies = Selector(response=response).xpath('//div[contains(@class,"movie-hover-info") and position()<10]')
        # movies = Selector(response=response).xpath('//div[contains(@class,"movie-hover-info")')[:10]
      
        for movie in movies:
            # 电影名字
            title = movie.xpath('./div[1]/span[1]/text()').extract_first().strip()
            # print(title)
            # 电影类型
            # filmtype_title = movie.xpath('./div[2]/span/text()').extract_first().strip()
            filmtype = movie.xpath('./div[2]/text()').extract()[1].strip()
            # print(filmtype)
            # 上映时间
            # rt_titile =  movie.xpath('./div[4]/span/text()').extract_first().strip()
            releasetime =  movie.xpath('./div[4]/text()').extract()[1].strip()
            # print(releasetime)
            item['title'] = "'"+title+"'"
            item['filmtype'] ="'"+filmtype+"'"
            item['releasetime'] = "".join(releasetime.split("-"))
            yield item