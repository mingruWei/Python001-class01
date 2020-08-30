class Zoo(object):
    def __init__(self,name):
        self.name = name

    @classmethod
    def add_animal(cls,animal):
        # setattr(z,"Cat",cat1)
        setattr(cls,animal.__class__.__name__,animal)



# “类型”、“体型”、“性格”、“是否属于凶猛动物”
class Animal(object):
    def __init__(self,animal_type,somatotype,character):
        self.animal_type = animal_type
        self.somatotype = somatotype
        self.character = character
#    “体型 >= 中等”并且是“食肉类型”同时“性格凶猛”
    @property
    def isFierce(self):
        if self.somatotype>=10 and self.animal_type=="食肉" and self.character=="凶猛":
            return True #凶猛动物
        return False

class Cat(Animal):
    cry="meow"
    def __init__(self,name,animal_type,somatotype,character):
        self.name = name
        super().__init__(animal_type,somatotype,character)

    @property
    def isPet(self):
        if self.isFierce==True: #是凶猛动物，不适合做宠物
            return False
        return True 

class Dog(Animal):
    cry="bark"
    def __init__(self,name,animal_type,somatotype,character):
        self.name = name
        super().__init__(animal_type,somatotype,character)

    @property
    def isPet(self):
        if self.isFierce==True: #是凶猛动物，不适合做宠物
            return False
        return True 

'''
体型
小:1-5
中：6-10
大：大于10
'''

if __name__ == '__main__':
    # 实例化动物园
    z = Zoo('时间动物园')
    # 实例化一只猫，属性包括名字、类型、体型、性格
    cat1 = Cat('大花猫1', '食肉',2, '温顺')
    print(f'Cat是否属于凶猛动物：{cat1.isFierce}')
    print(f'Cat是否适合作为宠物：{cat1.isPet}')
    print( hasattr(z, 'Cat'))

    # 增加一只猫到动物园
    # setattr(z,"Cat",cat1)
    z.add_animal(cat1)

    # dog1 = Dog('大狗1', '食肉',2, '温顺')

    # z.add_animal(dog1)
    # # 动物园是否有猫这种动物
    have_cat = hasattr(z, 'Cat')
    # print(cat1.__class__.__name__)
    print(have_cat)

    # print(dir(z))
