//Input: nums = [-3,2,-3,4,2]
//Output: 5

func minStartValue(_ nums: [Int]) -> Int {
    var prefix: [Int] = [nums[0]]
    var minValue: Int = nums[0]
    
    for i in 1..<nums.count {
        prefix.append(prefix[prefix.count - 1] + nums[i])
        minValue = min(minValue, prefix[i])
    }
    
    guard minValue < 1 else {
        return 1
    }
    
    return 1 - minValue
}

minStartValue([-3,2,-3,4,2])

minStartValue([2,3,5,-5,-1])
