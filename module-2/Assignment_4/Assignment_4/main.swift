//
//  main.swift
//  Assignment_4
//
//  Created by Nirmal Ghediya on 29/05/23.
//

import Foundation

//write a program to find maximum value from three number in swift

func max(a:Int,b:Int,c:Int) -> Int
{
    var maxvalue = a
    
    if b > maxvalue
    {
        print("B has a maximum value",b)
    }
    
    if c > maxvalue
    {
        print("C has a maximum value",c)
    
    }
    
    return maxvalue
}

let a = 75
let b = 55
let c = 65

let maxval = max(a,b,c)
print(maxval)
