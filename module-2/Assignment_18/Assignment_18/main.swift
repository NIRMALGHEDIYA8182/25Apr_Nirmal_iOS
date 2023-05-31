//
//  main.swift
//  Assignment_18
//
//  Created by Nirmal Ghediya on 31/05/23.
//

import Foundation

/* write a programe to make an ingredients set then check any value may
exist or not */

var ingredients: Set<String> = ["flour", "sugar", "eggs", "milk", "butter"]


let searchValue = "sugar"

if ingredients.contains(searchValue) {
    print("\(searchValue) is an ingredient.")
} else {
    print("\(searchValue) is not an ingredient.")
}

