func answerQueries(_ nums: [Int],  queries: [[Int]], limit: Int) -> [Bool] {
    var ans: [Bool] = []
    var prefix: [Int] = [nums[0]]
    
    for i in 1..<nums.count {
        prefix.append(nums[i] + prefix[prefix.count - 1])
    }
    
    for index in 0..<queries.count {
        if prefix[queries[index][1]] - prefix[queries[index][0]] + nums[queries[index][0]] > limit {
            ans.append(false)
        } else {
            ans.append(true)
        }
    }
    
    return ans
}

print(answerQueries([1, 6, 3, 2, 7, 2], queries: [[0, 3], [2, 5], [2, 4]], limit: 13))
