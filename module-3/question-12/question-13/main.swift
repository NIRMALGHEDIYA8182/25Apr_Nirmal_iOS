//
//  main.swift
//  question-12
//
//  Created by Nirmal Ghediya on 06/06/23.
//

import Foundation

/*
 WAP to use generics to swap two integer values.
 */
var temp = 0
print("enter the value of a:")
var a = Int(readLine()!)!

print("Enter the value of b:")
var b = Int(readLine()!)!

temp = a
a = b
b = temp

print("a:\(a) & b:\(b)")
