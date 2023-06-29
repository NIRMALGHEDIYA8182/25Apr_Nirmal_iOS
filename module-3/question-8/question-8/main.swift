//
//  main.swift
//  question-8
//
//  Created by Nirmal Ghediya on 06/06/23.
//

import Foundation

/*
 WAP to make an employee class which properties should
access through manager class.
 */

class Employe
{
    var name:String = ""
    var slary:Int = 0
    var role:String = ""
    func getdata()
    {
        print("Enter Name:")
        name = readLine()!
        
        print("Enter salary:")
        slary = Int(readLine()!)!
        
        print("Enter role :")
        role = readLine()!
        
    }
    func printDetails()
    {
        print("Name:\(name)")
        print("Salary:\(slary)")
        print("Role:\(role)")
    }
    
}
class Manager: Employe
{
    var teamMember:Int = 0
    var bonus:Int = 0
    func teamdata()
    {
        print("Enter no of team member:")
        teamMember = Int(readLine()!)!
        print("Enter bonus:")
        bonus = Int(readLine()!)!
        
    }
    func mgdetails()
    {
        print("Team size:\(teamMember)")
        print("Bonuse:\(bonus)")
    }
        
}
var mg = Manager()
mg.getdata()
mg.teamdata()
mg.printDetails()
mg.mgdetails()
