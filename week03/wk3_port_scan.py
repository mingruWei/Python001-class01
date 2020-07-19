import socket
from timeit import timeit
import itertools
import time
import argparse
import re
import ipaddress
from concurrent.futures import ThreadPoolExecutor
from multiprocessing import Pool,Manager

ip_list=[]
result_list=[]
json_file=''
def write_file(result_dict):
    with open(json_file,'w') as f:
        f.write(str(result_dict))

def scan(ip_port):
    global result_list
    result_dict={}
    s = socket.socket()
    s.settimeout(0.1)
    if s.connect_ex(ip_port) == 0:
        print(f'{ip_port} opened')
        result_dict['ip']=ip_port[0]
        result_dict['port'] = ip_port[-1]
        result_list.append(result_dict)
        print(result_list)
    s.close()
    return result_dict

def base_scan(ip_list):
   
    for ip_i in ip_list:
        for i in range(1, 65536):
            scan((ip_i,i))
# 多进程
def base_p(ip_list,n):
    for i in range(1,65536):
        with Pool(processes=n) as pool:
            # pool.map(scan,ip_port) 
            pool.apply_async(scan,('127.0.0.1',i),callback=write_file)


# 多线程   
def base_t(ip_list,n):
    ip_port = list(itertools.product(ip_list,range(1, 65536)))
    with ThreadPoolExecutor(n) as executor:
        executor.map(scan,ip_port)


if __name__ == "__main__":

    parser = argparse.ArgumentParser()
    parser.add_argument("-n", help="set the number of Concurrent ",required=True)
    parser.add_argument("-f", help="ping")
    parser.add_argument("-ip", help="continuous ip address",required=True)
    parser.add_argument("-w", help="write to json file",required=True)
    parser.add_argument("-m", help="proc|thread")
    parser.add_argument("-v", help="run time consuming")

    args = parser.parse_args()
    exec_way = args.m
    json_file = args.w
    n=1
    if n is not None:
        n = int(args.n)

    if args.ip is not None:
        pattern = re.compile(r'(.*)\-(.*?)$') 
        m = pattern.match(args.ip)      
        ip_start=int(ipaddress.ip_address(m.group(1)))
        ip_end = int(ipaddress.ip_address(m.group(2)))
        while ip_start<ip_end:
            ip_list.append(str(ipaddress.ip_address(ip_start)))
            ip_start = ip_start+1
    
    if exec_way =='proc':
        if args.v is not None:
            t1 = timeit(stmt = base_p(ip_list,n),setup = 'from __main__ import base_p', number = 1)
            print(f'多进程耗时：{t1} 秒')
        else:
            print('多进程扫描')
            base_p(ip_list,n)
        with open(json_file,'w') as f:
            f.write(str(result_list))
    elif exec_way =='thread':
        if args.v is not None:
            t2 = timeit(stmt = base_t(ip_list,n), setup = 'from __main__ import base_t', number = 1)
            print(f'多线程耗时：{t2} 秒')
        else:
            print('多线程扫描')
            base_t(ip_list,n)
        with open(json_file,'w') as f:
            f.write(str(result_list))
    else:
        if args.v is not None: 
            t3 = timeit(stmt = base_scan(ip_list),setup = 'from __main__ import base_scan', number = 1)
            print(f'单进程耗时：{t3} 秒')               
        else:
            print('单进程扫描') 
            base_scan(ip_list)
        with open(json_file,'w') as f:
            f.write(str(result_list))
 
