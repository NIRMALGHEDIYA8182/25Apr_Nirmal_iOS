//
//  main.swift
//  question-10
//
//  Created by Nirmal Ghediya on 06/06/23.
//

import Foundation

/*
 WAP to make a structure to store ten bank account details.
 */

struct bankdetails
{
    var account:Int = 0
    var balance:Int = 0
    var name:String = ""
    
}


var a = bankdetails()
var bnk: [bankdetails] = []
for _ in 0...9
        
{
    print("enter account no:")
    a.account = Int(readLine()!)!
    print("enter totle balance")
    a.balance = Int(readLine()!)!
    print("enter name:")
    a.name = readLine()!
    bnk.append(a)
}
for i in 0...9
{
    print("\n")
    print("account no : \(bnk[i].balance)")
    print("balance : \(bnk[i].balance)")
    print("name : \(bnk[i].name)")
    print("\n")
    
}
