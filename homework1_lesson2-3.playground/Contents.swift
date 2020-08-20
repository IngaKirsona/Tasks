import UIKit

import Foundation
/*
Exercise 1
Declare two string constants firstString and secondString. Assign them the values "I'm learning" and "swift". Print the phrase "I'm learning swift !!!" using these string constants.
*/
let firstString = "I am learning"
let secondString = " swift"
print (firstString + secondString + "!!!")

/*
Exercise 2.1
Create a constant named myAge and assign it the value of your age.
*/
let myAge = 35

/*
Exercise 2.2
Declare an Int variable named myAgeInTenYears and assign it the value of your age after 10 years(use the constant myAge and the addition(+) operator).
*/
var myAgeInTenYears = myAge + 10

/*
Exercise 2.3
Declare another daysInYear constant and set it to 365.25 (the number of days in a leap year).
*/
let daysInYear = 365.25

/*
Exercise 2.4
Declare a Float variable named daysPassed and set it to the number of days since you were born plus 10 years (use myAgeInTenYears(variable) and daysInYear(constant)).
*/
var daysPassed:Float = Float(daysInYear) * Float(myAgeInTenYears)

/*
Exercise 2.5
Using the print() function, print the phrases like: "My age is <...> years. In 10 years, I will be <...> years old. From the moment of my birth day have passed <...>" . (Symbols (<...>) must be replaced with variable values !)
*/
print ("My age is \(myAge) years. In 10 years I will be \(myAgeInTenYears) years old. From the moment of my birth day have passed \(daysPassed) days.")

/*
Exercise 3.
Calculate triangle's area and perimeter.
Conditions: triangle length: AC = 8.0, CB = 6.0. The hypotenuse of triangle AB is calculated using the sqrt(Double) function, replacing Double with the sum of squares of length.
 Steps:
 1.Right-angled triangle
 2.Hypotenuse of the triangle
 3.Area of a triangle
 4.Triangle perimeter
*/
let ac = 8.0
let cb = 6.0
let hypotenuse: Double = sqrt(ac * ac + cb * cb)
let area = ac * cb / 2
let perimeter = ac + cb + hypotenuse
print ("Triangles area is \(area) and perimeter is \(perimeter).")

Date()
let someLetter:Character = "c"
print(someLetter)
if someLetter == "A" || someLetter == "a"{
    print("This is A")
} else if someLetter == "B" || someLetter == "b"{
    print("This is B")
} else if someLetter == "C" || someLetter == "c"{
    print("This is C")
} else {print("None of them")
}
let letter = "d"
switch letter {
    case "A", "a":
    print("our letter is A, a")
    case "B", "b":
    print("our letter is B, b")
    case "C", "c":
    print("our letter is C, c")
    default:
    print("neviens")
}

let planetCount = 8
var countExpression = ""
switch planetCount {
case 0:
    countExpression = "none"
case 1:
    countExpression = "one"
case 2...4:
    countExpression = "few"
case 5...10:
    countExpression = "several"
case 12...50:
    countExpression = "many"
default:
    countExpression = "don't now!"
}
print("There are \(countExpression) known planets!")

var toInt:Int? = 0
var stringNumber = "123r"
toInt = Int(stringNumber)
print(toInt ?? 0)
 
if toInt != nil {
    print("Nav nulle \(toInt!)")
} else{
    print("converting to nill")
}
