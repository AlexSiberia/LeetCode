func findSubStringWithConstrait(_ s: String, k: Int) -> Int {
    var ans: Int = 0
    var dict: [Character : Int] = [:]
    var left: Int = 0
    var arr: [Character] = Array(s)
    
    for right in 0..<arr.count {
        if let j = dict[arr[right]] {
            dict[arr[right]]! += 1
        } else {
            dict[arr[right]] = 1
        }
        while dict.count > k {
            if let j = dict[arr[left]] {
                dict[arr[left]]! -= 1
            }
            if dict[arr[left]] == 0 {
                dict[arr[left]] = nil
            }
            left += 1
        }
        ans = max(ans, right - left + 1)
    }
    return ans
}

findSubStringWithConstrait("eceba", k: 2)
