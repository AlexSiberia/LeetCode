func pivotIndex(_ nums: [Int]) -> Int {
    var prefix: [Int] = [nums[0]]
    
    for i in 1..<nums.count {
        prefix.append(prefix[prefix.count - 1] + nums[i])
    }
    
    if prefix[prefix.count - 1] - prefix[0] == 0  {
        return 0
    }
    
    for i in 0..<prefix.count - 1 {
        let rightSum: Int = prefix[prefix.count - 1] - prefix[i + 1]
        
        if prefix[i] == rightSum {
            return i + 1
        }
    }
    
    return -1
}

pivotIndex([1,7,3,6,5,6])
pivotIndex([2,1,-1])
pivotIndex([-1,1,2])
pivotIndex([-1,-1,0,1,1,0])
