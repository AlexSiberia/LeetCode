func findMaxSumSubArray(_ nums: [Int], k: Int) -> Int {
    var ans: Int = 0
    var curr: Int = 0
    
    for i in 0..<k {
        curr += nums[i]
    }
    ans = curr
    
    for i in k..<nums.count {
        curr += nums[i] - nums[i - k]
        ans = max(ans, curr)
    }
    return ans
}

findMaxSumSubArray([3, -1, 4, 12, -8, 5, 6], k: 4)
