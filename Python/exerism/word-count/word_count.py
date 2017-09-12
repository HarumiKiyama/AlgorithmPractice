def word_count(words: str) -> dict():
    temp_str = ""
    res = {}
    for i in words:
        if i.isalpha() or i.isdigit():
            temp_str += i.lower()
        elif temp_str:
            res[temp_str] = res.get(temp_str, 0) + 1
            temp_str = ""
    if temp_str:
        res[temp_str] = res.get(temp_str, 0) + 1
    return res
