func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
    var ans: Int = Int.max
    var left: Int = 0
    var sum: Int = 0
    
    for right in 0..<nums.count {
       sum += nums[right]
      
        while sum >= target {
            ans = min(ans, right - left + 1)
            sum -= nums[left]
            left += 1
        }
    }
    return ans == Int.max ? 0 : ans
  }

minSubArrayLen(7, [2,3,1,2,4,3])
minSubArrayLen(11, [1,1,1,1,1,1,1,1])
minSubArrayLen(4, [1,4,4])
minSubArrayLen(11, [1,2,3,4,5])
