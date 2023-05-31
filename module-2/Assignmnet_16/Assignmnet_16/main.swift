//
//  main.swift
//  Assignmnet_16
//
//  Created by Nirmal Ghediya on 31/05/23.
//

import Foundation

//write a program to add new value at a specific position of an array 

var numbers = [1, 2, 3, 4, 5]
let newValue = 100
let position = 2


if position >= 0 && position <= numbers.count {
    numbers.insert(newValue, at: position)
    print("Array after adding \(newValue) at position \(position): \(numbers)")
} else {
    print("Invalid position")
}
