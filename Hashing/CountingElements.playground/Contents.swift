/*Input: arr = [1,2,3]
Output: 2
Explanation: 1 and 2 are counted cause 2 and 3 are in arr.
*/

func countElements(_ arr: [Int]) -> Int {
    var ans: Int = 0
    var set: Set<Int> = Set(arr)
    
    for num in arr {
        if set.contains(num + 1) {
            ans += 1
        }
    }
    
    return ans
}

countElements([1,2,3])
countElements([1,1,2,2])
