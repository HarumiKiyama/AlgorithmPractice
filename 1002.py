# -*- coding:utf-8 -*-
def divided_by_five(num):
    def remainder(remain):
        return num%5==remain
    return remainder

def get_num_list():
    input = raw_input().split(' ')
    return [int(i) for i in input[1:]]


nums = get_num_list()
pro_nums=[divided_by_five(i) for i in nums]

def get_alist(remain):
    res=[]
    for i,j in zip(nums,pro_nums):
        if j(remain):res.append(i)
    return res


def get_a1():
    a1_list=get_alist(0)
    res=sum(i for i in a1_list if i%2==0)
    if res==0:
        return 'N'
    return str(res)

def get_a2():
    res=0
    a2_list=get_alist(1)
    for j,i in enumerate(a2_list):
        if j%2==1:
            res-=i
        else:
            res+=i
    if res==0:
        return 'N'
    return str(res)

def get_a3():
    res=len(get_alist(2))
    if res==0:
        return 'N'
    return '%d'%res

def get_a4():
    if len(get_alist(3))==0:
        return 'N'
    return '%.1f'%(sum(get_alist(3))/len(get_alist(3)))

def get_a5():
    res=max(get_alist(4))
    if res==0:
        return 'N'
    return '%d'%res

def output():
    res_list=( get_a1(),get_a2(),get_a3() ,get_a4(),get_a5() )
    print '%s %s %s %s %s'%res_list

output()
