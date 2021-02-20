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
        var array: [Int] = [9,3,22,6,6,8,10,1989]
        for index in 1..<array.count{
            var key = array.remove(at: index)
            var  j = index - 1
            while j >= 0 && array[j] > key{
                j -= 1
            }
            array.insert(key, at: j+1)
        }
}
}
