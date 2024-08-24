func equalSubstring(_ s: String, _ t: String, _ maxCost: Int) -> Int {
//    let alfabet: [Character] = Array("abcdefghijklmnopqrstuvwxyz")
    let sArray: [Character] = Array(s)
    let tArray: [Character] = Array(t)
    var left: Int = 0
    var ans: Int = 0
    var countChanges: Int = 0
    
    for right in 0..<s.count {
        countChanges += abs(Int(sArray[right].asciiValue!) - Int(tArray[right].asciiValue!))
        
        while countChanges > maxCost {
            countChanges -= abs(Int(sArray[left].asciiValue!) - Int(tArray[left].asciiValue!))
            left += 1
        }

        ans = max(ans, right - left + 1)
    }
    
    return ans
  }

equalSubstring("abcd", "bcdf", 3)


func equalSubstring1(_ s: String, _ t: String, _ maxCost: Int) -> Int {
        let differences = zip(s.utf8, t.utf8).map{ abs(Int($0.0) - Int($0.1)) }
    print(differences)
        var left = 0, curCost = 0, answer = 0
        
        for (right, dif) in differences.enumerated() {
            curCost += dif
            while curCost > maxCost {
                curCost -= differences[left]
                left += 1
            }
            answer = max(answer, right - left + 1)
        }
        
        return answer
    }

equalSubstring1("abcd", "bcdf", 3)
/*Input: s = "abcd", t = "bcdf", maxCost = 3
Output: 3
Explanation: "abc" of s can change to "bcd".
That costs 3, so the maximum length is 3.
*/
