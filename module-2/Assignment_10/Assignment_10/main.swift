//
//  main.swift
//  Assignment_10
//
//  Created by Nirmal Ghediya on 31/05/23.
//

import Foundation

/*WAP to find maximum number from four variables using
conditional (?) operator.*/

let a = 10
let b = 20
let c = 15
let d = 12

let max = (a > b) ? (a > c) ? (a > d) ? a : d : (c > d) ? c : d : (b > c) ? (b > d) ? b : d : (c > d) ? c : d

print("The maximum number is \(max).")
