import string


def is_isogram(strings: str) -> bool:
    def remove_none_alpha(c):
        return c in string.ascii_lowercase

    strings = list(filter(remove_none_alpha, strings.lower()))
    return len(strings) == len(set(strings))
