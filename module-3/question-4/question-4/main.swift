//
//  main.swift
//  question-4
//
//  Created by Nirmal Ghediya on 06/06/23.
//

import Foundation

/*
 WAP to swap of two number using in-out parameters within
 function. 
 */
func swap(no1:Int,no2:Int){
    var a = no1 , b = no2
   
    a = b
    b = a
    
    
    print("value of a is \(a) & b is \(b)")
    
}

var a:Int,b:Int

print("enter the value of a :")
a = Int(readLine()!)!


print("enter the value of b :")
b = Int(readLine()!)!

swap(no1: a, no2: b)
