import scrapy
from items import SmzdmItem
from scrapy.selector import Selector
import math

class ZhinengshoujiSpider(scrapy.Spider):
    name = 'zhinengshouji'
    allowed_domains = ['smzdm.com']
    start_urls = ['http://smzdm.com/']

    def start_requests(self):
        url = f'https://www.smzdm.com/fenlei/zhinengshouji/h5c4s0f0t0p1/#feed-main/'
        try:
            yield scrapy.Request(url=url, callback=self.parse)

        except Exception as e:
            print("****************************************")
            print(e)
            print("****************************************")

    def parse(self, response):

        smartphones = Selector(response=response).xpath('//li[contains(@class,"feed-row-wide") and position()<=10]')
        
        for smartphone in smartphones:
            # 手机名字
            name = smartphone.xpath('.//h5[@class="feed-block-title"]/a/text()').extract_first().strip()
            print(f'name:{name}')
            # 评论url
            comments_url = smartphone.xpath('.//div[@class="z-feed-foot-l"]/a[@class="z-group-data"]/@href').extract_first().strip()
            print(f'comment_url:{comments_url}')
            # https://www.smzdm.com/p/24529509/#comments

            yield scrapy.Request(comments_url, callback=self.parse_comments)
        

    def parse_comments(self,response):
        # 获取评论总数
        total = Selector(response=response).xpath('//div[@id="panelTitle"]/em/text()').extract_first().strip()
        print(f'total:{total}')
        # 获取页数
        page = math.ceil(int(total)/30)

        # pagination = Selector(response=response).xpath('//div[@id="commentTabBlockNew"]//url[@class="pagination"]/li[last()-3]/a/text()')
        # [position()>1 and position()<={page}]
        # 翻页抓取评论URL
        # urls = Selector(response=response).xpath(f'//div[@id="commentTabBlockNew"]//ul[@class="pagination"]/li[position()>=1 and position()<={page}]/a/@href')
        item = SmzdmItem()

        name = Selector(response=response).xpath('//div[@class="title-box"]/h1/text()').extract_first().strip()
        
        comments = Selector(response=response).xpath('//div[@id="commentTabBlockNew"]//div[@class="comment_conBox"]/div[@class="comment_conWrap"]/div[@class="comment_con"]/p/span/text()')
       
        for comment in comments:

            comment_con = comment.extract().strip()
            if comment_con !="":
                item["name"]=name
                item["comments"]=comment_con
                yield item
                  
        # https://www.smzdm.com/p/24539837/#comments
        # https://www.smzdm.com/p/24539837/p2/#comments
        next_page_url = Selector(response=response).xpath(f'//div[@id="commentTabBlockNew"]//ul[@class="pagination"]/li[@class="pagedown"]')
        
        if next_page_url:

            next_page_url = next_page_url.xpath("./a/@href").extract_first().strip()

            print(f'next_page_url:{next_page_url}')

            yield scrapy.Request(url=next_page_url, callback=self.parse_comments)

    # def parse_comments_page(self,response):
    #     item = SmzdmItem()

    #     name = Selector(response=response).xpath('//div[@class="title-box"]/h1/text()').extract_first().strip()
        
    #     comments = Selector(response=response).xpath('//div[@id="commentTabBlockNew"]//div[@class="comment_conBox"]/div[@class="comment_conWrap"]/div[@class="comment_con"]/p/span/text()')
       
    #     for comment in comments:

    #         comment_con = comment.extract().strip()
    #         item["name"]=name
    #         item["comments"]=comment_con
    #         yield item      
       