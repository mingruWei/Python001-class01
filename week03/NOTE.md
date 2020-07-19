学习笔记

1、由于Windows没有fork调用，上面的代码在Windows上无法运行。因此，建议 os.fork() 不要在windows系统上用。
如果想要有fork调用，推荐用Unix/Linux或mac系统的电脑。

2、端口扫描，使用socket套接字，接收ip，和端口作为输入参数，建立连接。

3、端口扫描范围1~65536

4、多线程适合IO操作，对于计算的可能比多进程更慢

5、timeit计算消耗时间

6、防止资源抢占，可以加入Lock

7、进程间通信可使用Queue,但是对于进程池和线程池，该如何进程间通信呢？

8、多进程Pool写入文件问题，需要特别关注，不理解

9、命令行参数：python wk3_port_scan.py -n 10 -m proc -f ping -ip 127.0.0.1-127.0.0.2 -w D:/GeekUni/Python001-class01/week03/ip_port_opened.json
