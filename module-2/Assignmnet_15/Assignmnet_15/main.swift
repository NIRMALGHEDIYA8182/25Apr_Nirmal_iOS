//
//  main.swift
//  Assignmnet_15
//
//  Created by Nirmal Ghediya on 31/05/23.
//

import Foundation

/* write a program to make array of dictionaries and get a value from
specific dictionaries */


var arrayOfDictionaries = [
    ["name": "Nirmal", "age": 25],
    ["name": "Alfaz", "age": 30],
    ["name": "Anil", "age": 35]
]


if let dictionary = arrayOfDictionaries.first(where: { $0["name"] as? String == "Alfaz" }),
   let age = dictionary["age"] as? Int {
    print("Alfaz's age is \(age)")
} else {
    print("Alfaz's information not found")
}
