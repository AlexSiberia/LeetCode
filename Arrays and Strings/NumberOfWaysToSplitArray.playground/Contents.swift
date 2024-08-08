func waysToSplitArray(_ nums: [Int]) -> Int {
    var ans: Int = 0
    var prefix: [Int] = [nums[0]]
    
    for i in 1..<nums.count {
        prefix.append(prefix[prefix.count - 1] + nums[i])
    }
    
    print(prefix)
    
    for i in 0..<nums.count - 1 {
        print((prefix[nums.count - 1] - prefix[i]))
        if prefix[i] >= (prefix[nums.count - 1] - prefix[i]) {
            ans += 1
        }
    }
    
    return ans
}

print(waysToSplitArray([10,4,-8,7]))
