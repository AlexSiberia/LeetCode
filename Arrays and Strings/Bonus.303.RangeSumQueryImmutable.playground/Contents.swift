
class NumArray {
    private var prefix: [Int]

    init(_ nums: [Int]) {
        self.prefix = []
        self.prefix.append(nums[0])

        for i in 1..<nums.count {
            prefix.append(prefix[i - 1] + nums[i])
        }
    }
    
    func sumRange(_ left: Int, _ right: Int) -> Int {
        left == 0 ? prefix[right] : prefix[right] - prefix[left - 1]
    }
}

//var s: NumArray = [[[-2,0,3,-5,2,-1]],[0,2],[2,5],[0,5]]

var inst: NumArray = NumArray([-2,0,3,-5,2,-1])
inst.sumRange(2, 5)
