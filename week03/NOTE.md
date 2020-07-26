学习笔记

1、由于Windows没有fork调用，上面的代码在Windows上无法运行。因此，建议 os.fork() 不要在windows系统上用。
如果想要有fork调用，推荐用Unix/Linux或mac系统的电脑。

2、端口扫描，使用socket套接字，接收ip，和端口作为输入参数，建立连接。

3、端口扫描范围1~65536

4、多线程适合IO操作，对于计算的可能比多进程更慢

5、timeit计算消耗时间

6、防止资源抢占，可以加入Lock

7、进程间通信可使用Queue,但是对于进程池和线程池，该如何进程间通信呢？
    进程间通信，可以使用：
    1、管道 from multiprocessing import Pipe

    2、共享内存
    # 共享内存 shared memory 可以使用 Value 或 Array 将数据存储在共享内存映射中

    3、队列(更常用) from multiprocessing import Process, Queue
    # 队列是线程和进程安全的
    

8、多进程Pool写入文件问题，需要特别关注，不理解
    1、pool.map（func,iterable）,只能传入迭代的容器，不能传入单个参数，如文件路径。
    2、可以实现传入多个参数，通过for循环实现迭代，pool.apply_async(scan_p_t,args=((ip,i),js_filepath),callback=write_file,error_callback=err_callback)
    3、多进程 异步将扫描结果写入文件  得加入休眠 否则写不进文件 为啥？资源抢占吗？


9、命令行参数：python wk3_port_scan.py -n 10 -m proc -f ping -ip 127.0.0.1-127.0.0.2 -w D:/GeekUni/Python001-class01/week03/ip_port_opened.json
