# -*- coding: utf-8 -*-
import sys
class Student(object):
    """
    A class for describe student's test code and test grade
    """

    def __init__(self, code, de, cai):
        self.code = int(code)
        self.de = int(de)
        self.cai = int(cai)

    def get_de(self):
        return self.de

    def get_cai(self):
        return self.cai

    def get_code(self):
        return self.code

    def grade_pass(self, L):
        return self.de >= L and self.cai >= L

    def get_sum(self):
        return self.de + self.cai


def get_input(number):
    """
    get the input information,return a list of student instance
    """
    res = []
    for i in sys.stdin:
        students = [int(j) for j in i.split(' ')]
        res.append(Student(*students))
    return res
number, L, H=[int(i) for i in raw_input().split(' ')]
# number, L, H = [14, 60, 80]


# def get_input(number)# :
    # s = ['10000001 64 90', '10000002 90 60', '10000011 85 80',
    #      '10000003 85 80', '10000004 80 85', '10000005 82 77',
    #      '10000006 83 76', '10000007 90 78', '10000008 75 79',
    #      '10000009 59 90', '10000010 88 45', '10000012 80 100',
    #      '10000013 90 99', '10000014 66 60']

    # res = []
    # for i in s:
    #     student = [int(j) for j in i.split(' ')]
    #     res.append(Student(*student))
    # return res


def sort_rule(students):
    """
    同一组内排序的方法，先安装总分排序，总分相同按照德分降序，德分相同，按照编号升序,返回已经排好序的序列,
    使用冒泡排序实现
    """

    def rule_between_two_students(student_a, student_b):
        """
        判断两个学生之间的大小关系
        """

        def if_grades_equal(student_a, student_b):
            """
            总分相近时的判断,a应该排在b前则返回True，否则False.
            """

            def if_de_equal(student_a, student_b):
                """
                在德分相同的时候引入判断,a应该排在b前则返回True，否则False
                """
                return student_a.get_code() < student_b.get_code()

            if student_a.get_de() == student_b.get_de():
                return if_de_equal(student_a, student_b)
            else:
                return student_a.get_de() > student_b.get_de()

        if student_a.get_sum() == student_b.get_sum():
            return if_grades_equal(student_a, student_b)
        else:
            return student_a.get_sum() > student_b.get_sum()

    for i in range(len(students)-1):
        for j in range(len(students)-1):
            if not rule_between_two_students(students[j], students[j + 1]):
                students[j], students[j + 1] = students[j + 1], students[j]
    return students


def first_sort_rule(students):
    """
    过滤掉德/才的分数低于L的人
    返回一个序列，其中元素为student的实例
    """
    return [student for student in students if student.grade_pass(L)]


def second_sort_rule(students):
    """
    排序第一类，即德才双分均超过H的,返回第一类序列
    """
    res = [student
           for student in students
           if (student.get_de() >= H and student.get_cai() >= H)]
    rest = [i for i in students if i not in res]
    return sort_rule(res), rest


def third_sort_rule(students):
    """
    排序第二类，即德超过H但是才没有过的
    """
    res = [student for student in students if student.get_de() >= H]
    rest = [i for i in students if i not in res]
    return sort_rule(res), rest


def forth_sort_rule(students):
    """
    排序第三类，即德才都没有超过H但是德大于等于才的
    """
    res = [student
           for student in students if student.get_de() >= student.get_cai()]
    rest = [i for i in students if i not in res]
    return sort_rule(res), sort_rule(rest)


def sort_students(students):
    """
    为学生排序
    """
    students = first_sort_rule(students)
    class_one, students = second_sort_rule(students)
    for i in class_one:
        print '%d %d %d' % (i.get_code(), i.get_de(), i.get_cai())
    print 'This is the first class'
    class_two, students = third_sort_rule(students)
    for i in class_two:
        print '%d %d %d' % (i.get_code(), i.get_de(), i.get_cai())
    print 'This is the second class'
    class_three, class_four = forth_sort_rule(students)
    return class_one + class_two + class_three + class_four


def print_answer(students):
    """
    打印出结果
    """
    res = sort_students(students)
    for i in res:
        print '%d %d %d' % (i.get_code(), i.get_de(), i.get_cai())


def main():
    """
    主程序
    """
    students = get_input(number)
    print_answer(students)


main()
