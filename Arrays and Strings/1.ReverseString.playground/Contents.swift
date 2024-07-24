func reverseString(_ s: inout [Character]) {
    var left: Int = 0
    var right: Int = s.count - 1
    
    while left < right {
        let temp: Character = s[left]
        s[left] = s[right]
        s[right] = temp
        left += 1
        right -= 1
    }
  }

var char: [Character] = ["h","e","l","l","o"]
reverseString(&char)
