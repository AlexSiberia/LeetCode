func largestAltitude(_ gain: [Int]) -> Int {
    var ans: Int = 0
    var prefix: [Int] = [0]
    
    for i in 0..<gain.count {
        let currentPrefixValue: Int = prefix[prefix.count - 1] + gain[i]
        prefix.append(currentPrefixValue)
        ans = max(ans, currentPrefixValue)
    }
    print(prefix)
    
    return ans
}

largestAltitude([-5,1,5,0,-7])
