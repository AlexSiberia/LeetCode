func sortedSquares(_ nums: [Int]) -> [Int] {
    var left: Int = 0
    var right: Int = nums.count - 1
    var count: Int = nums.count - 1
    var array: [Int] = nums
    
    while left <= right {
        var numsToSquare: Int = 0
        if abs(nums[left]) < abs(nums[right]) {
            numsToSquare = nums[right] * nums[right]
             array[count] = numsToSquare
            right -= 1
            count -= 1
        } else {
            numsToSquare = nums[left] * nums[left]
            array[count] = numsToSquare
            left += 1
            count -= 1
        }
    }
    return array
}
print(sortedSquares([-4,-1,0,3,10]))
