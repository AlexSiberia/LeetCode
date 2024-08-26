func findUnicNumber(_ nums: [Int]) -> [Int] {
    var ans: [Int] = []
    var set: Set<Int> = Set(nums)
    
    for num in set {
        if !set.contains(num + 1) && !set.contains(num - 1) {
            ans.append(num)
        }
    }
    
    return ans
}

findUnicNumber([1,2,3,5])
