def is_leap_year(num: int) -> bool:
    if num % 4 == 0 and num % 100 != 0:
        return True
    if num % 400 == 0:
        return True
    return False
