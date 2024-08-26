func repeatedCharacter(_ s: String) -> Character {
    var dict: [Character: Int] = [:]
    for (i, char) in s.enumerated() {
        if let j = dict[char] {
            return char
        }
        dict[char] = i
    }
    return "z"
}

repeatedCharacter("abccbaacz")
