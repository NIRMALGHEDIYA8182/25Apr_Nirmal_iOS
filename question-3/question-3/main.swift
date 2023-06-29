//
//  main.swift
//  question-3
//
//  Created by Nirmal Ghediya on 06/06/23.
//

import Foundation

/*
 WAP to check whether a string contains specific characters or
 not
 */

print("Enter your name:")
var str = readLine()!

print("Enter the character:")
var a = readLine()!

var ok = str.contains(a)
if ok == true{
    print("\(a) is present in \"\(str)\"")
}
else
{
    print("Not present in \"\(str)\"")
}
