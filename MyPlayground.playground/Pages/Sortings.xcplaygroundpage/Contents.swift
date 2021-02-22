


// InsertionSort
import Foundation
import UIKit
 //Isertion sort
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

//bubble sort
array = [9,3,22,6,6,8,10,1989]
 for index in 0..<array.count{
            for j in 1..<array.count{
                if array[j-1] > array[j]{
                    var temp = array[j-1]
                    array[j-1] = array[j]
                    array[j] = temp
                }
    }
}
print(array)

// selection sort
array = [9,3,22,6,6,8,10,1989]
for index in 0..<array.count{
    for j in index+1..<array.count{
        if array[index] > array[j]{
            let temp = array[index]
            array[index] = array[j]
            array[j] = array[index]
        }
    }
}
print(array)

//quick sort
array = [9,3,22,6,6,8,10,1989]

func quickSortHoare(_ items: inout [Int], low: Int, high: Int) {
    guard low < high else { return }
    
    let p = partitionHoare(&items, low: low, high: high)
    
    quickSortHoare(&items, low: low, high: p)
    quickSortHoare(&items, low: p+1, high: high)

    
}
func partitionHoare(_ items: inout [Int], low: Int, high: Int) -> Int{
    
    let pivot = items[low]
    var i = low - 1
    var j = high + 1
    
    while true{
        repeat { i += 1 } while items[i] < pivot
        repeat { j -= 1 } while items[j] > pivot
        guard i < j else { return j}
        items.swapAt(i, j)
        
    }
}
