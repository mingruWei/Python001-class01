学习笔记

1、python 虚拟环境 python -m venv .venv

2、配置mysql，window安装mysql,修改root密码，pymysql连接mysql,insert 时需要注意指定字段，以及date的插入格式为20200701，无需引号，而字符串需要加上引号"'"

3、代理ip:github 免费IP库。在middlewares.py，定义RandomHttpProxyMiddleware 类，继承HttpProxyMiddleware。
重写from_crawler类方法（@classmethod，可以不用声明类，直接调用）读取setting.py中定义的HTTP_PROXY_LIST等参数，用cls传回类的init函数中，设置proxies;
重写_set_proxy，为request设置代理IP。

4、下载页面时增加try catch 进行异常捕获。

5、scrapy 命令：
    scarpy startproject maoyan
    进入
    ./maoyan/maoyan/spiders
    scrapy genspider movies maoyan.com
    启动,只显示输出
    scrapy crawl movies --nolog

6、模拟浏览器头部信息(2e分支)，pip install fake_useragent

7、WebDriver模拟浏览器行为，模拟登录获取登录cookie,模拟javascript点击事件等javascript行为，而不是发送http请求，pip install selenium

8、需要下载chromdriver，webdriver和chrome之间需要的驱动，下载后放在.venv/bin目录下，注意下载不同的操作系统版本。

