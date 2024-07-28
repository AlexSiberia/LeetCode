func findLengthFlipZero(s: String) -> Int {
    var ans: Int = 0
    var left: Int = 0
    var curr: Int = 0
    let arr: [Character] = Array(s)
    
    for right in 0..<arr.count {
        if arr[right] == "0" {
            curr += 1
        }
        while curr > 1 {
            if arr[left] == "0" {
                curr -= 1
            }
            left += 1
        }
        ans = max(ans, (right - left + 1))
    }
    return ans
}

findLengthFlipZero(s: "11001011")

func findLengthFlipZeroSpace(s: String) -> Int {
    var ans: Int = 0
    var left: String.Index = s.startIndex
    var right: String.Index = s.startIndex
    var curr: Int = 0
    
    for char in s {
        if char == "0" {
            curr += 1
        }
        right = s.index(after: right)
        
        while curr > 1 {
            if s[left] == "0" {
                curr -= 1
            }
            left = s.index(after: left)
        }
        ans = max(ans, (s.distance(from: left, to: right)))
        
    }
    return ans
}

findLengthFlipZeroSpace(s: "11001011")
