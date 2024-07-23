func sumTwoSortedArrays(arr1: [Int], arr2: [Int]) -> [Int] {
    var count1: Int = 0
    var count2: Int = 0
    var arrSum: [Int] = []
    
    while count1 < arr1.count && count2 < arr2.count {
        if arr1[count1] <= arr2[count2] {
            arrSum.append(arr1[count1])
            if count1 < arr1.count {
                count1 += 1
            } else {
                arrSum = arrSum + arr2[count2..<arr2.endIndex]
            }
        } else {
            arrSum.append(arr2[count2])
            if count2 < arr2.count {
                count2 += 1
            } else {
                arrSum = arrSum + arr1[count1..<arr1.endIndex]
            }
        }
    }
    
    while count1 < arr1.count {
        arrSum.append(arr1[count1])
        count1 += 1
    }
    
    while count2 < arr2.count {
        arrSum.append(arr2[count2])
        count2 += 1
    }
    return arrSum
}

sumTwoSortedArrays(arr1: [1, 4, 7, 20], arr2: [3, 5, 6])
