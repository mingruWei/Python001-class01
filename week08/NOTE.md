# Python高阶语法学习笔记
## 深拷贝和浅拷贝
深拷贝是对对象的引用

  一般系统 不允许非 root 用户 启动 1024 以下的端口

但是有修改方法

### 可以这么理解

一个代理是代理你去请求服务器，那就是正向代理，它离你近
一个代理是代理服务器向你提供服务，就是反向代理，它离服务器近

## 装饰器
阅读PEP 318装饰器

作业二实现2：
``` 
def map_diy(func,*iterators):
    try:
        i = 0
        while 1:
            print(iterators)
            # yield func(*[j[i] for j in iterators])
            i+=1
    except IndexError :
        pass
print(list(map(square,[1,2,3,4,5])))
print(list(map(sum,[1,2,3,4,5],[2,4,6,8,10])))
```
## python 内置装饰器 
### @wraps
功能是，返回被装饰函数的名字，而不是装饰器内的函数名
### @logit
日志输出时候，必须纪录真实的函数名称才可以
### @requires_auth 
登录验证
### @functools.lru_cache
    应用再函数被频繁调用，结果被重复使用，多次调用函数，并且结果一致的时候，直接给结果就可以了，
    如果无限制的使用，内存很快就爆掉了，保证最近最常使用的缓存才会调用，长期没有使用的缓存，LRU算法淘汰
