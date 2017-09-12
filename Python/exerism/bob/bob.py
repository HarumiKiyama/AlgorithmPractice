def hey(words: str) -> str:
    response = ("Whatever.", "Whoa, chill out!", "Sure.", "Fine. Be that way!")
    words = words.strip()
    if not words:
        return response[3]
    if words.isupper():
        return response[1]
    if words[-1] == '?':
        return response[2]
    return response[0]
