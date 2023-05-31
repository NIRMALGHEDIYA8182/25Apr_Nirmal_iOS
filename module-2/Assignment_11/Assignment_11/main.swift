//
//  main.swift
//  Assignment_11
//
//  Created by Nirmal Ghediya on 31/05/23.
//

import Foundation

/*
 write a program to find minimum number using relational operator (take
 three numbers)
 */

let a = 10
let b = 5
let c = 8

var min = a

if b < min {
    min = b
}

if c < min {
    min = c
}

print("The minimum number is \(min).")
