func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var dictionary: [Int : Int] = [:]
    
    for (i, num) in nums.enumerated() {
        print(i, num)
        if let j = dictionary[target - num] {
            return [i, j]
        }
        dictionary[num] = i
        print(dictionary)
    }
    
    
    return []
}
twoSum([2,8,11,7], 9)
