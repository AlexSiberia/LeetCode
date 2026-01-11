import UIKit

func sortedSquares(_ nums: [Int]) -> [Int] {
    var left: Int = 0
    var right: Int = 1
    var minValue: Int = 0
    var maxValue: Int = nums[nums.count - 1]
    var result: [Int] = []
    
    while left <= right {
        let leftSquare: Int = nums[left] * nums[left]
        let rightSquare: Int = nums[right] * nums[right]
        
        if leftSquare < rightSquare {
            if leftSquare < minValue {
                minValue = leftSquare
                result.insert(minValue, at: 0)
            }
            
            
      
        } else if leftSquare > rightSquare {
            if rightSquare > maxValue {
                maxValue = rightSquare
                result.append(maxValue)
            }
            result.append(rightSquare)

        }
        left += 1
        right -= 1
    }
    return result
}

sortedSquares( [-4,-1,0,3,10])
