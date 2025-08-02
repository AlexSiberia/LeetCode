import UIKit

func combineAndSortTwoArrays(arr1: [Int], arr2: [Int]) -> [Int] {
    var point1: Int = 0
    var point2: Int = 0
    var resultArr: [Int] = []
    while point1 < arr1.count && point2 < arr2.count {
        if arr1[point1] < arr2[point2] {
            resultArr.append(arr1[point1])
            point1 += 1
            
        } else if arr1[point1] > arr2[point2] {
            resultArr.append(arr2[point2])
            point2 += 1
        }
    }
    
    while point1 < arr1.count {
        resultArr.append(arr1[point1])
        point1 += 1
    }
    
    while point2 < arr2.count {
        resultArr.append(arr2[point2])
        point2 += 1
    }
    return resultArr
}

let arrl: [Int] = [1, 4, 7, 20]
let arr2: [Int] = [3, 5, 6]

combineAndSortTwoArrays(arr1: arrl, arr2: arr2)
