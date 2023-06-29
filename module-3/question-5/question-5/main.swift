//
//  main.swift
//  question-5
//
//  Created by Nirmal Ghediya on 06/06/23.
//

import Foundation

/*
 WAP to sort an array element using closure
 */
import Foundation

var arr:[Int] = [1,3,2,6,4,5,7,9,8]


var sorted = {
    (str:[Int]) -> [Int] in
    
    return str.sorted()
}

print("\(sorted(arr))")
