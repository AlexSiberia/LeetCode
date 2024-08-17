func runningSum(_ nums: [Int]) -> [Int] {
        var prefix: [Int] = [nums[0]]
        
        for index in 1..<nums.count {
            prefix.append(prefix[prefix.count - 1] + nums[index])
        }
            return prefix
    }

runningSum([1, 2, 3, 4])
