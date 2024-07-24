func isSubsequence(_ s: String, _ t: String) -> Bool {
    var i: Int = 0
    var j: Int = 0
    let sArr = Array(s)
    let tArr = Array(t)
    
    while i < sArr.count && j < tArr.count {
        if sArr[i] == tArr[j] {
            i += 1
        }
        j += 1
    }
    return i == sArr.count
}

isSubsequence("abc", "ahbgdc")
isSubsequence("axc", "ahbgdc")

func isSubsequenceSolution(_ s: String, _ t: String) -> Bool {
    var sIndex = s.startIndex
    var tIndex = s.startIndex

    while tIndex < t.endIndex {
        if sIndex < s.endIndex && s[sIndex] == t[tIndex] {
            sIndex = s.index(after: sIndex)
        }
        tIndex = t.index(after: tIndex)
    }
    return sIndex == s.endIndex
}


isSubsequenceSolution("abc", "ahbgdc")
isSubsequenceSolution("axc", "ahbgdc")
