# -*- coding:utf-8 -*-

def is_primer(num):
    """
    return True if the num is primer,otherwise
    return False
    """
    for i in range(2, int(num ** 0.5) + 1):
        if num % i == 0:
            return False
    return True


def primer_generator(max_counter):
    yield 2
    i = 3
    counter = 1
    while counter < max_counter:
        if is_primer(i):
            counter += 1
            yield i
        i += 1


def get_input():
    # raw_str=raw_input()
    # return [int(i) for i in raw_str.split(' ')]
    return [5, 27]


def get_result():
    m, n = get_input()
    primers = primer_generator(n)
    primer_list = [j for j in primers]
    return primer_list[m-1:]


def render_result():
    res = get_result()
    for i, j in enumerate(res):
        if i==0:
            print j,
        elif i + 1 == len(res):
            print j
        elif (i + 1) % 10 == 0:
            print  str(j)+'\n',
        else:
            print j,


render_result()
