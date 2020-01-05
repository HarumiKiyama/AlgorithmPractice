class Solution:
    def restoreIpAddresses(self, s: str) -> List[str]:
        MAX = 255
        length = len(s)
        rv = []

        def _helper(prefix, start, points_num):
            if length - start < 1:
                return

            if points_num == 3:
                if (length - start > 1 and s[start] == '0') or int(s[start:]) > MAX:
                    return
                rv.append('{}.{}'.format(prefix, s[start:]))
                return
            format_temp = '{}.{}'
            if points_num == 0:
                format_temp = '{}{}'

            _helper(format_temp.format(prefix, s[start:start + 1]), start + 1,
                    points_num + 1)
            if s[start] != '0':
                _helper(format_temp.format(prefix, s[start:start + 2]),
                        start + 2, points_num + 1)
            if s[start] != '0' and int(s[start:start + 3]) <= MAX:
                _helper(format_temp.format(prefix, s[start:start + 3]),
                        start + 3, points_num + 1)

        _helper('', 0, 0)
        return rv
