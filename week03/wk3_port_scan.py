import socket
from timeit import timeit
import itertools
import time
import argparse
import re
import ipaddress
from concurrent.futures import ThreadPoolExecutor
from multiprocessing import Pool,Manager


result_list=[]
json_file=''
dict_args={}
# print(f'dict_args id {dict_args}')
def write_file(result_dict):
    print(f'result_dict : {result_dict}')
    
    with open(json_file,'w') as f:
        f.write(str(result_dict))

def err_callback(e):
    print('error callback: {e}')


def scan(ip_port):
    global result_list
  
    result_dict={}
    s = socket.socket()
    s.settimeout(0.1)
    if s.connect_ex(ip_port) == 0:
        print(f'{ip_port} opened')
        result_dict['ip']=ip_port[0]
        result_dict['port'] = ip_port[-1]
        # result_list.append(result_dict)
        # print(result_list)
    s.close()
    return result_dict

def scan_p(ip_port):
    result_dict={}
    s = socket.socket()
    s.settimeout(0.1)
    if s.connect_ex(ip_port) == 0:
        print(f'{ip_port} opened')
        result_dict['ip']=ip_port[0]
        result_dict['port'] = ip_port[-1]
        with open('D:/GeekUni/Python001-class01/week03/ip_port_opened.json','a') as f:
            f.write(str(result_dict)+'\n')

    s.close()
    return result_dict

def base_scan(ip_list):
   
    for ip_i in ip_list:
        for i in range(1, 65536):
            scan((ip_i,i))
# 多进程
def base_p(ip_list,n):
    ip_port = list(itertools.product(ip_list,range(1, 200)))
    with Pool(processes=n) as pool:
        pool.map(scan_p,ip_port) 
        # for ip in ip_list:
        #     for i in range(1,200):
        #         pool.apply_async(scan,args=((ip,i)),callback=write_file,error_callback=err_callback)


# 多线程   
def base_t(ip_list,n):
    ip_port = list(itertools.product(ip_list,range(1, 200)))
    with ThreadPoolExecutor(n) as executor:
        executor.map(scan_p,ip_port)

def parse():
    parser = argparse.ArgumentParser()
    parser.add_argument("-n", help="set the number of Concurrent ",required=True)
    parser.add_argument("-f", help="ping",required=True)
    parser.add_argument("-ip", help="continuous ip address",required=True)
    parser.add_argument("-w", help="write to json file",required=True)
    parser.add_argument("-m", help="proc|thread")
    parser.add_argument("-v", help="run time consuming")

    args = parser.parse_args()
    return args

def get_param(args):
    global dict_args

    dict_args['m']=args.m
    dict_args['f']=args.f
    dict_args['ip'] =  args.ip
    dict_args['w'] = args.w
    dict_args['v'] = args.v
    n=1
    if n is not None:
        n = int(args.n)
    dict_args['n'] = n
    print(f'-------json_file{id(dict_args)}')
    return dict_args
def ip_address_split(ip_str):
    ip_list=[]
    if ip_str is not None:
        pattern = re.compile(r'(.*)\-(.*?)$') 
        m = pattern.match(args.ip)      
        ip_start=int(ipaddress.ip_address(m.group(1)))
        ip_end = int(ipaddress.ip_address(m.group(2)))
        while ip_start<ip_end:
            ip_list.append(str(ipaddress.ip_address(ip_start)))
            ip_start = ip_start+1
    return ip_list
if __name__ == "__main__":

    args = parse()
    print(args.w)
    dict_args =  get_param(args)
    print(f'++++++++++++++++++++++json_file{dict_args}')
    ip_list= ip_address_split(dict_args['ip'])

    if  dict_args['m'] =='proc':
        if args.v is not None:
            t1 = timeit(stmt = base_p(ip_list,dict_args['n']),setup = 'from __main__ import base_p', number = 1)
            print(f'多进程耗时：{t1} 秒')
        else:
            print('多进程扫描')
            base_p(ip_list,dict_args['n'])
        # with open(json_file,'w') as f:
        #     f.write(str(result_list))
    elif  dict_args['m'] =='thread':
        if args.v is not None:
            t2 = timeit(stmt = base_t(ip_list,dict_args['n']), setup = 'from __main__ import base_t', number = 1)
            print(f'多线程耗时：{t2} 秒')
        else:
            print('多线程扫描')
            base_t(ip_list,dict_args['n'])
        # with open(json_file,'w') as f:
        #     f.write(str(result_list))
    else:
        if args.v is not None: 
            t3 = timeit(stmt = base_scan(ip_list),setup = 'from __main__ import base_scan', number = 1)
            print(f'单进程耗时：{t3} 秒')               
        else:
            print('单进程扫描') 
            base_scan(ip_list)
        with open(json_file,'w') as f:
            f.write(str(result_list))
 
