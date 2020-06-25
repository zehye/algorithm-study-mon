import UIKit

// 이진탐색
func binarySearch(list: [Int], item: Int) -> Int {
    var low = 0
    var high = list.count - 1
    
    while low <= high {
        var mid = (low+high)/2  // 가운데 숫자 확인 
        var guess = list[mid]
        
        if guess == item {
            return mid
        }
        
        if guess > item {
            high = mid-1
        } else {
            low = mid+1
        }
    }
    return 0
}

let myList = [1,3,5,7,9]
print(binarySearch(list: myList, item: 3))
