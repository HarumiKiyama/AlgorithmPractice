def decode(s: str) -> str:
    res = ""
    temp_str = ""
    for i in s:
        if not i.isdigit():
            num = 1 if not temp_str else int(temp_str)
            res += i * num
            temp_str = ""
        else:
            temp_str += i
    return res


def encode(s: str) -> str:
    res = ""
    temp_str = ""
    for i in s:
        if i not in temp_str:
            res += temp_str if len(
                temp_str) < 2 else str(len(temp_str)) + temp_str[0]
            temp_str = i
        else:
            temp_str += i
    res += temp_str if len(temp_str) < 2 else str(len(temp_str)) + temp_str[0]
    return res
