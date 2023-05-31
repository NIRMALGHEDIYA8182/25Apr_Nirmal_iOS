//
//  main.swift
//  assignment_13
//
//  Created by Nirmal Ghediya on 31/05/23.
//

import Foundation

//write a program  to take distinct value with tuples in swift



func findDistinctValues(in tuples: [(Int, Int)]) -> [Int] {
    var distinctValues = Set<Int>()

    for tuple in tuples {
        distinctValues.insert(tuple.0)
        distinctValues.insert(tuple.1)
    }

    return Array(distinctValues)
}

// Example usage
let tuples = [(1, 2), (2, 3), (3, 4), (2, 4), (4, 5)]
let distinctValues = findDistinctValues(in: tuples)
print(distinctValues)
