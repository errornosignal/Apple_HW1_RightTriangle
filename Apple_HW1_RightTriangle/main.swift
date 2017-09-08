//
//  main.swift
//  Apple_HW1_RightTriangle
//
//  Created by Reid Nolan on 9/3/17.
//  Copyright © 2017 Reid Nolan. All rights reserved.
//

import Foundation

//print program header
print("HW1-RightTriangle\n")

//get and validate user input
func validateDoubleInput(prompt: String) -> Double {
    while(true) {
        print(prompt)
        let inputString = readLine()!
        
        if (NumberFormatter().number(from: inputString)?.doubleValue) != nil {
            let side = Double(inputString)!
            
            if side >= 0.1 {
                return side;
            }
            else {
                print("Error! Minimum value is 0.1")
            }
        }
        else {
            print("Error! Input is not a double value")
        }
    }
}

//set user input to variables
let side1 = validateDoubleInput(prompt: "Enter length of side 1: ")
let side2 = validateDoubleInput(prompt: "Enter length of side 2: ")
let side3 = validateDoubleInput(prompt: "Enter length of side 3: ")

//add variables to array and sort
var sidesArray = [side1, side2, side3]
sidesArray.sort()

//perform mathematical computations
let side1Sqrd = pow(sidesArray[0],2)
let side2Sqrd = pow(sidesArray[1],2)
let side3Sqrd = pow(sidesArray[2],2)
let actualHypotenuse = sqrt(side1Sqrd + side2Sqrd)

//output all values to console
print("\n")
print("side1 = \(String(describing: sidesArray[0]))")
print("side2 = \(String(describing: sidesArray[1]))")
print("side3 = \(String(describing: sidesArray[2]))")
print("apparentHypotenuse = \(String(describing: sidesArray[2]))")
print("actualHypotenuse = \(String(describing: actualHypotenuse))")

//confirm triangle type *INCLUDES BONUS*
if side1Sqrd + side2Sqrd == side3Sqrd {
    print("Triangle is RIGHT\n")
}
else if side1 == side2 && side1 == side3 {
    print("Triangle is EQUILATERAL\n")
}
else if side1 == side2 || side1 == side3 || side2 == side3 {
    print("Triangle is ISOSCELES\n")
}
else if side1 != side2 && side1 != side3 && side2 != side3 {
    print("Triangle is SCALENE\n")
}
else {
    //do nothing
}
