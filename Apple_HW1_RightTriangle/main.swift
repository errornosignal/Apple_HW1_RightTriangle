//
//  main.swift
//  Apple_HW1_RightTriangle
//
//  Created by Reid Nolan on 9/3/17.
//  Copyright © 2017 Reid Nolan. All rights reserved.
//

import Foundation

var side1, side2, side3: Double
side1 = 0.0
side2 = 0.0
side3 = 0.0

var inputString = ""

print("HW1-RightTriangle\n");

print("Enter length of side 1: ")
inputString = readLine()!
side1 = Double(inputString)!

print("Enter length of side 2: ")
inputString = readLine()!
side2 = Double(inputString)!

print("Enter length of side 3: ")
inputString = readLine()!
side3 = Double(inputString)!


print("side1 = \(String(describing: side1))")
print("side2 = \(String(describing: side2))")
print("side3 = \(String(describing: side3))")




