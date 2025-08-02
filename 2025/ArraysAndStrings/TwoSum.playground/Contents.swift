import UIKit

func twoSum(numbers: [Int], target: Int) -> [Int] {
    var left: Int = 0
    var right: Int = numbers.count - 1
//    var arr: [Int] = []
    
    while left < right {
        if numbers[left] + numbers[right] == target {
            return [left + 1, right + 1]
        } else if numbers[left] + numbers[right] > target {
            right -= 1
        }
            else if numbers[left] + numbers[right] < target {
                left += 1
            }
        }
        return []
    }

let numbers = [2,7,11,15]
let target: Int = 9
twoSum(numbers: numbers, target: target)
