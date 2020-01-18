class Solution:
    def repeatedStringMatch(self, A: str, B: str) -> int:
        t = ""
        for rv in range(len(B)//len(A) + 2):
            t+=A
            if t.find(B) != -1:
                return rv+1
        return -1
