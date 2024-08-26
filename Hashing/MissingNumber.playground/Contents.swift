func missingNumber(_ nums: [Int]) -> Int {
//    let setNumsInput = Set(nums)
//    
//    for i in 0...nums.count {
//        if !setNumsInput.contains(i) {
//            return i
//        }
//    }
//    return -1
    
    var missing: Int = nums.count
    for i in 0..<nums.count {
        let xor = i ^ nums[i]
//        print("xor = \(xor)")
        missing ^= xor
//        print("missing = \(missing)")
    }
    return missing
}

missingNumber([3,0,1])

