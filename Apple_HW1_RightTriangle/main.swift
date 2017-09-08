//
//  main.swift
//  Apple_HW1_RightTriangle
//
//  Created by Reid Nolan on 9/3/17.
//  Copyright © 2017 Reid Nolan. All rights reserved.
//

import Foundation

var side1, side2, side3, apparentHypotenuse, temp, actualHypotenuse: Double
side1 = 0.0
side2 = 0.0
side3 = 0.0
apparentHypotenuse = 0.0
actualHypotenuse = 0.0
var inputString = ""
var inputIsGood = false

func validateDoubleInput(prompt: String) -> Double {
    while(!inputIsGood) {
        print(prompt)
        inputString = readLine()!
        var side: Double = 0.0
        
        if (NumberFormatter().number(from: inputString)?.doubleValue) != nil {
            side = Double(inputString)!
            if side >= 0.1 {
                return side;
            }
            else {
                print("Minimum value is 0.1")
            }
        }
        else {
            print("Input is not a double value.")
        }
    }
    return 0;
}

print("HW1-RightTriangle\n")

side1 = validateDoubleInput(prompt: "Enter length of side 1: ")
side2 = validateDoubleInput(prompt: "Enter length of side 2: ")
side3 = validateDoubleInput(prompt: "Enter length of side 3: ")

var array = [side1, side2, side3]
array.sort()

var side1Sqrd = pow(array[0],2)
var side2Sqrd = pow(array[1],2)
var side3Sqrd = pow(array[2],2)

temp = side1Sqrd+side2Sqrd
actualHypotenuse = sqrt(temp)

print("side1 = \(String(describing: array[0]))")
print("side2 = \(String(describing: array[1]))")
print("side3 = \(String(describing: array[2]))")
print("apparentHypotenuse = \(String(describing: array[2]))")
print("actualHypotenuse = \(String(describing: actualHypotenuse))")

if temp == side3Sqrd {
    print("Triangle IS right.")
}
else {
    print("Triangle IS NOT right")
}
