func moveZeroes(_ nums: inout [Int]) {
//    guard nums.count > 1 else { return }
//    var count: Int = 0
//    for i in 0..<nums.count - 1 {
//        while nums[i] == 0 && count < (nums.count - 1) {
//            nums.append(nums.remove(at: i))
//            count += 1
//            print(nums)
//        }
//        count += 1
//    }
    var left: Int = 0
    
    for right in 0..<nums.count {
        if nums[right] != 0 {
            nums.swapAt(left, right)
            left += 1
        }
    }
}
//var nums = [0,1,0,3,12]
var nums = [1, 2, 3, 0, 4]
moveZeroes(&nums)
print (moveZeroes(&nums))
