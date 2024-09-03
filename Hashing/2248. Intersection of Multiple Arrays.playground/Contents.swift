/*
Input: nums = [[3,1,2,4,5],[1,2,3,4],[3,4,5,6]]
Output: [3,4]
Explanation:
The only integers present in each of nums[0] = [3,1,2,4,5], nums[1] = [1,2,3,4], and nums[2] = [3,4,5,6] are 3 and 4, so we return [3,4].
 */

func intersection(_ nums: [[Int]]) -> [Int] {
    var ans: [Int] = []
    var dict: [Int : Int] = [:]
    let n: Int = nums.count
    
    for arr in nums {
        for i in arr {
            if let j = dict[i] {
                dict[i]! += 1
            } else {
                dict[i] = 1
            }
        }
    }
    
    for (key, value) in dict {
        if value == n {
            ans.append(key)
        }
    }
    
    return ans.sorted()
}

intersection([[3,1,2,4,5],[1,2,3,4],[3,4,5,6]])
