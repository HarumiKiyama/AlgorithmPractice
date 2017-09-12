def distance(dna1, dna2):
    if len(dna1) != len(dna2):
        raise ValueError
    res = 0
    for i, j in zip(dna1, dna2):
        if i != j:
            res += 1
    return res
