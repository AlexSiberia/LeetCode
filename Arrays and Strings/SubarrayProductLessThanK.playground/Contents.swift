func numSubarrayProductLessThanK(_ nums: [Int], _ k: Int) -> Int {
    if k <= 1 {
        return 0
    }
    
    var ans: Int = 0
    var left: Int = 0
    var curr: Int = 1

    for right in 0..<nums.count {
    
        curr *= nums[right]
        
        while curr >= k {
            curr /= nums[left]
            left += 1
        }
        ans += right - left + 1
    }
    
    return ans
}

//numSubarrayProductLessThanK([10,5,2,6], 100)
numSubarrayProductLessThanK([10,9,10,4,3,8,3,3,6,2,10,10,9,3], 19)
