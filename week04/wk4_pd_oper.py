import pandas as pd
import numpy as np

group=['x','y','z']
data=pd.DataFrame({
    "id":np.random.randint(900,1200,20),
    "group":[group[x] for x in np.random.randint(0,len(group),20)] ,
    "order_id":np.random.randint(5,50,20),
    "age":np.random.randint(15,50,20)
    })

print(f'SELECT * FROM data;\n{data}')

print(f'SELECT * FROM data LIMIT 10;\n{data.head(10)}')

print(f'SELECT id FROM data;\n {data.id}')

print(f'SELECT id FROM data;\n {data.id.size}')

print(f'SELECT id FROM data;\n {data.id.size}')

df1=data.loc[(data['id']<1000) & (data['age']>30)]
print(f'SELECT * FROM data WHERE id<1000 AND age>30;\n {df1}')

def func_duplicate(df):
    df['dup'] = df.drop_duplicates(['order_id'])
    return df

df2 = data.loc[15:,'order_id']=40

data.loc[15:,'id']=400
data.loc[:14,'id']=1400

print(f'SELECT id,COUNT(DISTINCT order_id) FROM table1 GROUP BY id;\n')
data.groupby('id').groups
for a, b in data.groupby('id'):
    print(a)
    b['COUNT(DISTINCT order_id)'] = b.drop_duplicates(['order_id'])['order_id'].count()
    print(b.loc[:,['id','COUNT(DISTINCT order_id)']])

data2=pd.DataFrame({
    "id":np.random.randint(1,50,20),
    "group":[group[x] for x in np.random.randint(0,len(group),20)] ,
    "order_id":np.random.randint(5,50,20),
    "age":np.random.randint(15,50,20)
    })


data3 = pd.DataFrame({
    "group":[group[x] for x in np.random.randint(0,len(group),20)] ,
    "salary":np.random.randint(10,50,20)
    })

data_inner = pd.merge(data2,data3, on='group',how='inner')
print(f'SELECT * FROM table1 t1 INNER JOIN table2 t2 ON t1.id = t2.id;\n{data_inner}')

data_union = pd.concat([data2,data3])
print(f'SELECT * FROM table1 UNION SELECT * FROM table2;\n{data_union}')
df2 = data2.drop(data2[data2.id ==10].index)
print(f'DELETE FROM table1 WHERE id=10;\n{df2}')
df2 = data2.drop('age',axis=1)
print(f'ALTER TABLE table1 DROP COLUMN column_name;\n{df2}')
