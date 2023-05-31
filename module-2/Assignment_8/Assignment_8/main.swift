//
//  main.swift
//  Assignment_8
//
//  Created by Nirmal Ghediya on 30/05/23.
//

import Foundation

//WAP to perform all arithmetic operation with menu driven.

func add(a:Int,b:Int) -> Int {
    return a + b
}
func sub(a:Int,b:Int) -> Int {
    return a - b
}
func mul(a:Int,b:Int) -> Int {
    return a * b
}
func div(a:Int,b:Int) -> Any {
    return a / b
}


    print("Arithmetic Operation Menu:")
    print("----------------------------")
    print("1. Addition")
    print("2. Subtraction")
    print("3. Multiplication")
    print("4. Division")
    print("----------------------------")
print("Enter value of A:")
var sta = Int(readLine()!)!
print("Enter value of B:")
var stb = Int(readLine()!)!
print("Entr Your Choice(1-4):")
var x = Int(readLine()!)!
    
    

    




func performOperation(_ choice: Int, _ a:Int, _ b: Int) {
    var result: Any
    
    switch choice {
    case 1:
        result = add(a: a, b: b)
        print("Result: \(a) + \(b) = \(result)")
    case 2:
        result = sub(a: a, b: b)
        print("Result: \(a) - \(b) = \(result)")
    case 3:
        result = mul(a: a, b: b)
        print("Result: \(a) * \(b) = \(result)")
    case 4:
        if b != 0 {
            result = div(a:a, b:b)
            print("Result: \(a) / \(b) = \(result)")
        } else {
            print("Error: Division by zero is not allowed!")
        }
    
    default:
        print("Invalid choice!")
    }
}


performOperation(x, sta, stb)
