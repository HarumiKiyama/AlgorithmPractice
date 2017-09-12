def is_pangram(n: str) -> bool:
    n = list(filter(lambda x: x.isalpha(), n.lower()))
    return len(set(n)) == 26
