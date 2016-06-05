# -*- coding: utf-8 -*-
def get_input():
    """
    get the input information
    """
    pass

class student(object):
    """
    A class for describe student's test code and test grade
    """
    def __init__(self, code, de, cai):
        self.code=int(code)
        self.de=int(de)
        self.cai=int(cai)
    def grade_pass(L):
        return self.de>=L and self.cai>=L
    def grade_sum():
        return self.de+self.cai

def grades_equal(student_a,student_b):
    """
    总分相近时的判断,a应该排在b前则返回True，否则False.
    """
    def de_equal(student_a,student_b):
        """
        在德分相同的时候引入判断,a应该排在b前则返回True，否则False
        """
        pass
    pass

def first_sort_rule(students):
    """
    过滤掉德/才的分数低于L的人
    返回一个序列，其中元素为student的实例
    """
    pass
def second_sort_rule(students):
    """
    排序第一类，即德才双分均超过H的,返回第一类序列
    """
    pass

def third_sort_rule(students):
    """
    排序第二类，即德超过H但是才没有过的
    """
    pass

def forth_sort_rule(students):
    """
    排序第三类，即德才都没有超过H但是德大于等于才的
    """
    pass

def fifth_sort_rule(students):
    """
    排序第四类，德才都没有超过H但是才大于德的
    """
    pass


def sort_students(students):
    """
    为学生排序
    """
    pass

def print_answer(students):
    """
    打印出结果
    """
    pass

def main():
    """
    主程序
    """
    pass
