//
//  main.swift
//  Assignment_19
//
//  Created by Nirmal Ghediya on 31/05/23.
//

import Foundation
/*
 
 write a programe to check an array has elements or not if yes then print
 elements or print "empty array"
 */

let array: [Int] = [1, 2, 3, 4, 5]

if !array.isEmpty {
    print("Array elements:")
    for element in array {
        print(element)
    }
} else {
    print("Empty array")
}

