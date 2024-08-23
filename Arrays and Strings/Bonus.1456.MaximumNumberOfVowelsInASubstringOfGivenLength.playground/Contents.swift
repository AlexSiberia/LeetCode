func maxVowels(_ s: String, _ k: Int) -> Int {
    let setOfVowels: Set<Character> = ["a", "e", "i", "o", "u"]
    var left: Int = 0
    var count: Int = 0
    var ans: Int = 0
    let array: [Character] = Array(s)
   
    for right in 0..<k {
        if setOfVowels.contains(array[right]) {
            ans += 1
        }
    }
    
    count = ans
    
    for right in k..<array.count {
        if setOfVowels.contains(array[right]) {
            count += 1
        }
     
        if setOfVowels.contains(array[left]) {
            count -= 1
        }
        left += 1
        ans = max(ans, count)
    }
   
    return ans
}

maxVowels("abciiidef", 3)
maxVowels("aeiou", 2)
