# -*- coding: utf-8 -*-
DAYS = {'A': 'MON',
        'B': 'TUE',
        'C': 'WED',
        'D': 'THU',
        'E': 'FRI',
        'F': 'SAT',
        'G': 'SUN'}
HOURS = {'0': 0,
         '1': 1,
         '2': 2,
         '3': 3,
         '4': 4,
         '5': 5,
         '6': 6,
         '7': 7,
         '8': 8,
         '9': 9,
         'A': 10,
         'B': 11,
         'C': 12,
         'D': 13,
         'E': 14,
         'F': 15,
         'G': 16,
         'H': 17,
         'I': 18,
         'J': 19,
         'K': 20,
         'L': 21,
         'M': 22,
         'N': 23}
ENGLISH_STRING_LOWER_CASE = 'abcdefghijklmnopqrstuvwxyz'
ENGLISH_STRING_UPPER_CASE = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
ENGLISH_STRING = ENGLISH_STRING_UPPER_CASE + ENGLISH_STRING_LOWER_CASE
input_list = []
# input_list=['3485djDkxh4hhGE',
#             '2984akDfkkkkggEdsb',
#             's&hgsfdk',
#             'd&Hyscvnm']
same_characters = []
for i in range(4):
    input_list.append(raw_input())

flag=False
for i, j in zip(input_list[0], input_list[1]):
    if flag and i==j:
        if i in ENGLISH_STRING:
            same_characters.append(i.upper())
        else:
            same_characters.append(i)
        break
    if i == j and i in ENGLISH_STRING_UPPER_CASE:
        same_characters.append(i)
        flag=True
index=0
for i,j in zip(input_list[3],input_list[2]):
    if i == j and i in ENGLISH_STRING:
        same_characters.append(index)
        break
    index+=1

day = DAYS.get(same_characters[0])
hour = HOURS.get(same_characters[1])
minute = same_characters[-1]

print '%s %02d:%02d' % (day, hour, int(minute))
# print same_characters
