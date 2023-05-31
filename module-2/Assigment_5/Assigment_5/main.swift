//
//  main.swift
//  Assigment_5
//
//  Created by Nirmal Ghediya on 29/05/23.
//

// WAP to perform all arithmetic operator

import Foundation

class arith
{
    func add(a:Int,b:Int)
    {
        print("Addition:",a+b)
    }
    func sub(a:Int,b:Int)
    {
        print("Subtraction:",a-b)
    }
    func mul(a:Int,b:Int)
    {
        print("Multiplication:",a*b)
    }
    func div(a:Int,b:Int)
    {
        print("Division:",a/b)
    }
}

var ope = arith()

print("Enter Value of A:")
var sa = Int(readLine()!)!
print("Enter Value of B:")
var sb = Int(readLine()!)!

ope.add(a: sa, b: sb)
ope.sub(a: sa, b: sb)
ope.mul(a: sa, b: sb)
ope.div(a: sa, b: sb)
