import UIKit

func reverseString(_ s: inout [Character]) {
    var startIndex = 0
    var endIndex = s.count - 1
    
    while startIndex < endIndex {
        (s[startIndex], s[endIndex]) = (s[endIndex], s[startIndex])
        startIndex += 1
        endIndex -= 1
    }
     
}
var s: [Character] = ["h","e","l","l","o"]
reverseString(&s)

