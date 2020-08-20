import UIKit

/*
Exercise 1
The user opens a deposit in the bank for 5 years in the amount of 500_000 Eur. The interest rate per annum \(rate) is 11%. Calculate the amount of income \(profit) at the end of the \(period).
 for _ in 1...period{
 }
 print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
*/

let startAmount = 500_000
let interest = 11
let  period = 5
var profitPerYear = startAmount * interest/100
var profit = 0
for _ in 1...period {
    profit += profitPerYear
}
var deposit = profit + startAmount
print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !\n")

/*
Exercise 2
Crate an integer array with any set of numbers and  print("My even numbers are: \(evenNumber)")
 Use a % inside the for loop.
*/

//First option
let numbers:[Int] = [15, 53, 31, 900, 5, 40, 2, 30, 50]
print("My even numbers are:")
for evenNumber in numbers {
    if (evenNumber % 2 == 0) {
    print(evenNumber)
    }
}

//Second option
let numb = [15, 53, 31, 900, 5, 40, 2, 30, 50]
let evenNumb = numb.filter { $0 % 2 == 0 }
print("My even numbers are: \(evenNumb)")

//Third option
let arr = [15, 53, 31, 900, 5, 40, 2, 30, 50]
let even = arr.filter { $0.isMultiple(of: 2) }
print("My even numbers are: \(even)\n")

/*
Exercise 3
 Inside the for loop create randomNumber for the random Int calculation. Calculate and print("Number 5 will be after \(counter) shuffles"). Don't forget to make a break inside the if statement.
*/

var numberFive = 5
var calculation: Int
for counter in 1...100 {
    let randomNumber = Int.random(in: 0 ... 10)
    if randomNumber == 5 {
        break
    }
        else {
        calculation = numberFive + randomNumber
        }
    print("\tRandom number is: \(randomNumber)")
    print("Number 5 after counter \(counter) shuffles into  \(calculation)")
    }
print("\n")

//otrs variants
let setOfNumbers: Set = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
var counter = 0
for randomNumber in setOfNumbers {
    counter += 1
     if randomNumber == 5 {
        break
    }
}
print("Number 5 will be after \(counter) shuffles.")

/*
 Exercise 4
 A bug is climbing to a 10-meter electric post. During the day, bug can climb two meters, during the night she slides down to 1 meter. Determine with the help of the cycle how many days bug will climb on the top of the post. Think about which loop to use in which situation. print("bug will spend \(numberOfDays)) to reach top of the post")
 */
//happy coding :)

var sum = 0
var numberOfDays = 0
while true {
    sum = sum + 2
    numberOfDays += 1
    if sum >= 10 {
        break
    }else {
        sum = sum - 1
    }
}
print("Bug will spend \(numberOfDays) days to reach the top of the post.")



