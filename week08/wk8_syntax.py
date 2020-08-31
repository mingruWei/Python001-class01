import time
from functools import wraps
'''
作业一：
容器序列：list,tuple,dict,collections.deque
扁平序列：str

可变序列：list,dict,
不可变序列：tuple,str,collections.deque
'''

'''
作业二
'''
def square(x):            # 计算平方数
    return x ** 2

def sum(x,y):
    return x+y

# def map_diy(func,*iterators):
#     try:
#         i = 0
#         while 1:
#             print(iterators)
#             # yield func(*[j[i] for j in iterators])
#             i+=1
#     except IndexError :
#         pass
# print(list(map(square,[1,2,3,4,5])))
# print(list(map(sum,[1,2,3,4,5],[2,4,6,8,10])))

def map_diy(func,*iterators):
    for iter in zip(*iterators):
        yield(func(*iter))


print(list(map_diy(square,[1,2,3,4,5])))

print(list(map(sum,[1,2,3,4,5],[2,4,6,8,10])))


'''
作业三
'''

def timer(func):
    @wraps(func)    #   装饰来保留被修饰函数的元信息，注意需要传入(func)
    def inner(*args,**kwargs):  #接收不定长参数
        start = time.time()
        func(*args,**kwargs)    #接收不定长参数
        end = time.time()
        return end - start
    return inner

@timer
def foo(a,b,c):
    print(a+b+c)
    time.sleep(0.5)
    print(f'foo: {foo.__name__}')   

# print(foo(1,2,3))
