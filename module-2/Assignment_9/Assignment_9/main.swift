//
//  main.swift
//  Assignment_9
//
//  Created by Nirmal Ghediya on 30/05/23.
//

import Foundation

/*WAP to make variable optional and requirements if variable
have not value then it doesn't show an error.*/

func printName(firstName: String?, lastName: String?) {
    if let firstName = firstName, let lastName = lastName {
        print("Full Name: \(firstName) \(lastName)")
    } else {
        print("Please provide both first name and last name.")
    }
}


printName(firstName: "Nirmal", lastName: "Ghediya")

//printName(firstName: "Nirmal", lastName: nil)
