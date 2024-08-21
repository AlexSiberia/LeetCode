func reverseOnlyLetters(_ s: String) -> String {
    var left: Int = 0
    var right: Int = s.count - 1
    var array: [Character] = Array(s)
    
    while left < right {
        if !array[left].isLetter {
            left += 1
            continue
        } else if !array[right].isLetter {
            right -= 1
            continue
        }
        let buffer: Character = array[left]
        array[left] = array[right]
        array[right] = buffer
        left += 1
        right -= 1
    }
    return String(array)
}

reverseOnlyLetters("ab-cd")
