func findMaxSubArray(nums: [Int], k: Int) -> Int {
    var left: Int = 0
    var curr: Int = 0
    var ans: Int = 0
    
    for right in 0..<nums.count {
        curr += nums[right]
//        ans += 1
        
        while curr > k {
            left += 1
            curr -= nums[left]
//            ans -= 1
        }
        ans = max(ans, (right - left + 1))
    }
    return ans
}

print(findMaxSubArray(nums: [3, 2, 1, 3, 1, 1], k: 5))
