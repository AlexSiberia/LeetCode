func reverseWords(_ s: String) -> String {
    var ans: String = ""
    var array: [Character] = Array(s)
    var left: Int = 0
    
    for right in 0..<array.count {
        if array[right] == " " {
            var rightPoint: Int = right - 1
            while left < rightPoint {
                var buffer: Character = array[left]
                array[left] = array[rightPoint]
                array[rightPoint] = buffer
                left += 1
                rightPoint -= 1
            }
            left = right + 1
        } else if right == array.count - 1 {
            var rightPoint: Int = right
            while left < rightPoint {
                var buffer: Character = array[left]
                array[left] = array[rightPoint]
                array[rightPoint] = buffer
                left += 1
                rightPoint -= 1
            }
            left = right + 1
        }
        
    }
    ans = String(array)
    return ans
}

reverseWords("Let's take LeetCode contest")

