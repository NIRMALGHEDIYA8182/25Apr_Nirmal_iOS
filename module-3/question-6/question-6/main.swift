//
//  main.swift
//  question-6
//
//  Created by Nirmal Ghediya on 06/06/23.
//

import Foundation
//All Aarithmatic operator

func addition(a:Int , b:Int) -> Int{
    return a+b
}

func substracton(a:Int , b:Int) -> Int{
    return a-b
}

func multiply(a:Int, b:Int) -> Int{
    return  a*b
    
}

func division(a:Float, b:Float) -> Float{
    return a/b
}

func modulo(a:Int , b:Int) -> Int{
    return a%b
    
}

print(" enter the value of a: ")
var a = Int(readLine()!)!

print("enter the value of  b: ")
var b = Int(readLine()!)!


print("'+' : addition , '-' : substraction, '*' : multiply , '/' dividion, '%' : modulo :")
var choice = readLine()!


switch (choice){
    case "+":print("sum is: \(addition(a: a, b: b))")
        break
    case "-":print("subtraction is: \(substracton(a: a, b: b))")
        break
    case "*":print("product is: \(multiply(a: a, b: b))")
        break
case "/":print("Division is: \(division(a: Float(a), b: Float(b)))")
       break
    case "%":print("Reminser is: \(modulo(a: a, b: b))")
        break
    default:print("Invalide!")

}
