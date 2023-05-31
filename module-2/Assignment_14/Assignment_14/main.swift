//
//  main.swift
//  Assignment_14
//
//  Created by Nirmal Ghediya on 31/05/23.
//
//write a progame to perform operation like. Union, intersection etc. using set.

import Foundation

let setA: Set<Int> = [1, 2, 3, 4, 5]
let setB: Set<Int> = [4, 5, 6, 7, 8]


let union = setA.union(setB)
print("Union: \(union)")


let intersection = setA.intersection(setB)
print("Intersection: \(intersection)")

