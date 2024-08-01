func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
    var sum: Double = 0
    var ans: Double = 0
    
    for i in 0..<k {
        sum += Double(nums[i])
    }
    
    ans = sum / Double(k)
    
    for i in k..<nums.count {
        sum += Double(nums[i])
        sum -= Double(nums[i - k])
        ans = max(ans, sum / Double(k))
    }
    
    return ans
}
