# Sorting algorithms

Были рассмотрены следующие виды сортировок
- [Сортировка вставками](#insertion-sort)
- [Сортировка пузырьком](#bubble-sort)
- [Сортировка выбором](#selection-sort)
- [Быстрая сортировка методом Хоара](#quick-sort)


### <a name = "insertion-sort"></a>Сортировка вставками
``` swift
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
```

###  <a name = "bubble-sort"></a>Сортировка пузырьком

```
public func bubbleSort<Element>(_ array: inout [Element])
 where Element: Comparable {
 // 1
 guard array.count >= 2 else {
 return
 }
 // 2
 for end in (1..<array.count).reversed() {
 var swapped = false
 // 3
 for current in 0..<end {
 if array[current] > array[current + 1] {
 array.swapAt(current, current + 1)
 swapped = true
 }
 }
 // 4
 if !swapped {
 return
 }
 }
}
```
###  <a name = "selection-sort"></a>Сортировка выбором

```
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
```


### <a name = "quick-sort"></a>Быстрая сортировка методом Хоара

```swift
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
```
