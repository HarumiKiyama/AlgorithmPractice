class Solution:
    def rotate(self, nums: List[int], k: int) -> None:
        """
        Do not return anything, modify nums in-place instead.
        """
        length = len(nums)

        def _helper(start, k):
            k = k % (length - start)
            index = length - k
            if start >= length or k < 1:
                return
            for off in range(k):
                nums[index + off], nums[start+off] = nums[start +
                                                            off], nums[index +
                                                                       off]
            if length - start == 2 * k:
                return
            if length - start > 2 * k:
                return _helper(start + k, k)
            return _helper(start + k, 2 * k - (length - start))

        _helper(0, k)
