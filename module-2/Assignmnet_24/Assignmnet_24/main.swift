//
//  main.swift
//  Assignmnet_24
//
//  Created by Nirmal Ghediya on 31/05/23.
//

import Foundation
//write a programe delete value from array at specific position
var array = [1, 2, 3, 4, 5]
let indexToDelete = 2

if indexToDelete < array.count {
    array.remove(at: indexToDelete)
    print("Updated array: \(array)")
} else {
    print("Invalid index")
}
