func reversePrefix(_ word: String, _ ch: Character) -> String {
    var array: [Character] = Array(word)
    var ans: String = ""
    var left: Int = 0
    var right: Int = 0
    
    for i in 0..<array.count {
        right = i
        if array[i] == ch {
            while left <= right {
                array.swapAt(left, right)
                left += 1
                right -= 1
            }
            break
        }
    }
    
    ans = String(array)
    return ans
  }

reversePrefix("abcdefd", "d")
