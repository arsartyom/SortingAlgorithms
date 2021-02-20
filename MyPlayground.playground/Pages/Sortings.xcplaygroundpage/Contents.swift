


// InsertionSort
import Foundation
import UIKit
// Isertion sort
var array: [Int] = [9,3,22,6,6,8,10,1989]
for index in 1..<array.count{
    let key = array.remove(at: index)
    var  j = index - 1
    while j >= 0 && array[j] > key{
        j -= 1
    }
    array.insert(key, at: j+1)
}
print(array)


