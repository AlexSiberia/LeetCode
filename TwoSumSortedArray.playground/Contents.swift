func getSumSortedArray(array: [Int], target: Int) -> Bool {
    var left: Int = 0
    var right: Int = array.count - 1
    
    while left < right {
        let summ = array[left] + array[right]
        if  summ == target {
            return true
        } else if summ < target {
            left += 1
        } else {
            right -= 1
        }
        
    }
    return false
}

getSumSortedArray(array: [1, 2, 4, 6, 8, 9, 14, 15], target: 30)
