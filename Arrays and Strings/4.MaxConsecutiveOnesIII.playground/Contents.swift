func longestOnes(_ nums: [Int], _ k: Int) -> Int {
    var left: Int = 0
    var countZero: Int = 0
    var ans: Int = 0
    
    for right in 0..<nums.count {
        if nums[right] == 0 {
            countZero += 1
        }
        
        while countZero > k {
            if nums[left] == 0 {
                countZero -= 1
            }
            left += 1
        }
        
        ans = max(ans, right - left + 1)
    }
    
    return ans
}

longestOnes([0,0,1,1,0,0,1,1,1,0,1,1,0,0,0,1,1,1,1], 3)
