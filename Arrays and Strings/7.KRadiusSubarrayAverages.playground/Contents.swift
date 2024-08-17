/*  Input: nums = [7,4,3,9,1,8,5,2,6], k = 3
 Output: [-1,-1,-1,5,4,4,-1,-1,-1]
 */

func getAverages(_ nums: [Int], _ k: Int) -> [Int] {
    var avg: [Int] = []
    var prefix: [Int] = [nums[0]]
    
    for i in 1..<nums.count {
        prefix.append(prefix[prefix.count - 1] + nums[i])
    }
    print(prefix)
    
    for i in 0..<prefix.count {
        if  (i - k) < 0 || i + k > prefix.count - 1 {
            avg.append(-1)
            print(avg)
        } else {
            avg.append((prefix[i + k] - prefix[i - k] + nums[i - k]) / (k * 2 + 1))
            print(avg)
        }
    }
    
    return avg
}

getAverages([7,4,3,9,1,8,5,2,6], 3)


// Sliding window solution

func getAverages1(_ nums: [Int], _ k: Int) -> [Int] {
    let arraySize: Int = nums.count
    var avg: [Int] = Array(repeating: -1, count: arraySize)
    let windowSize: Int = k * 2 + 1
    var windowSum: Int = 0
    
    if k == 0 {
        return nums
    }
    
    if windowSize > arraySize {
        return avg
    }
    
    for i in 0..<windowSize {
        windowSum += nums[i]
    }
    
    avg[k] = windowSum / windowSize
    
    for i in windowSize..<nums.count {
        windowSum = windowSum + nums[i] - nums[i - windowSize]
        avg[i - k] = windowSum / windowSize
    }
    print(avg)
    return avg
}

getAverages1([7,4,3,9,1,8,5,2,6], 3)
