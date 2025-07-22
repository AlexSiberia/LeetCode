func subarraySum(_ nums: [Int], _ k: Int) -> Int {
    var curr: Int = 0
    var ans: Int = 0
    var countDict: [Int : Int] = [0 : 1]
    
    for num in nums {
        curr += num
        let diff: Int = curr - k
        ans += countDict[diff, default: 0]
        countDict[curr, default: 0] = 1 + countDict[curr, default: 0]
        
    }
    
//    print(countDict)
    return ans
}

subarraySum([1, 2, 1, 2, 1], 3)

// Повторим решение

func subarraySum1(_ nums: [Int], _ k: Int) -> Int {
    var curr: Int = 0
    var ans: Int = 0
    var count: [Int : Int] = [0 : 1]
    
    for num in nums {
        curr += num
        let diff: Int = curr - k
        
        if let j = count[diff] {
            ans += j
        }
        if let j = count[curr] {
            count[curr]! += 1
        } else {
            count[curr] = 1
        }
    }
    return ans
}

subarraySum1([1, 2, 1, 2, 1], 3)
