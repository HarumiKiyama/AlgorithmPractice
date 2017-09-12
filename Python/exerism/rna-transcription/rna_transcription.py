def error_capture(f):
    def wrap(*args):
        try:
            return f(*args)
        except KeyError:
            return ''

    return wrap


@error_capture
def to_rna(rna: str) -> str:
    trans_dict = {'A': 'U', 'T': 'A', 'C': 'G', 'G': 'C'}
    return ''.join(list(map(lambda x: trans_dict[x], rna)))
