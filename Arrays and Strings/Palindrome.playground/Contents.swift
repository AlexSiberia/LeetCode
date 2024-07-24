func checkPalindrome(string: String) -> Bool {
    var left: Int = 0
    var right: Int = string.count - 1
    
    let array = Array(string)
    
    while left < right {
        if array[left] != array[right] {
            return false
        }
        left += 1
        right -= 1
    }
    return true
}

checkPalindrome(string: "racecar")
checkPalindrome(string: "aceba")
checkPalindrome(string: "a")

let string = "palindrom"
//string.index(<#T##i: String.Index##String.Index#>, offsetBy: <#T##Int#>)
