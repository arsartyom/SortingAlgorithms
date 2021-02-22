//
//  ViewController.swift
//  testingssort
//
//  Created by Artem Arslanov on 20.02.2021.
//  Copyright © 2021 Artem Arslanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
     
        // Isertion sort
        var array = [9,3,22,6,6,8,10,1989]

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
    
        quickSortHoare(&array, low: 0, high: array.count - 1)
        print(array)
    }
}
