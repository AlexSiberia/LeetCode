func getCommon(_ nums1: [Int], _ nums2: [Int]) -> Int {
    var nums1Count = 0
    var nums2Count = 0
    
    while (nums1Count < nums1.count) && (nums2Count < nums2.count) {
        if nums1[nums1Count] == nums2[nums2Count] {
            return nums1[nums1Count]
        } else if nums1[nums1Count] < nums2[nums2Count] {
            nums1Count += 1
            print("Nums1Count \(nums1Count)")
    
        } else if nums1[nums1Count] > nums2[nums2Count] {
            nums2Count += 1
            print("Nums2Count \(nums2Count)")
        }
    }
    return -1
}

getCommon([1,2,3], [4, 5])
