class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        t_l = [0] * 26
        for i in s:
            t_l[ord(i) - ord('a')] += 1
        for i in t:
            t_l[ord(i) - ord('a')] -= 1
        for i in t_l:
            if i != 0:
                return False
        return True
