import UIKit
/*
Exercise 1
Declare myTeam as Girls.
Create a Dictionary resultsOfGames where Key contains teamName as String and Value of two [String] results.
Print the output, for example:
 Girls against Brooklyn Nets scored - 99:89
 Girls against Brooklyn Nets scored - 109:99
 Girls against Dallas Mavericks scored - 87:93
 Girls against Dallas Mavericks scored - 104:97
 Girls against Washington Wizards scored - 117:112
 Girls against Washington Wizards scored - 107:122
*/
let myTeam = "Girls"
var resultsOfGame = [
                ("Brooklyn Nets", "99:89"),// we can also aslo add more results ["Brooklin Nets', "1:0", "3:0"]
                ("Brooklyn Nets", "109:99"),
             ("Dallas Mavericks", "87:93"),
             ("Dallas Mavericks", "104:97"),
           ("Washington Wizards", "117:112"),
           ("Washington Wizards","107:122")
]
for (name, score) in resultsOfGame {
    print("\(myTeam) against \(name) scored - \(score).")
}
print("\n")
/*
Exercise 2
Declare an Array of Int. In the wallet you have only 1x by 5 - 500 EUR.
Create a func to calculateCash sum of your cash inside your wallet.
Run the func.
*/
var arr:[Int] = [5, 10, 20, 50, 100, 200, 500]
func calculateCash(cash: [Int]) -> [Int]{
    var totalCash: [Int] = []
    totalCash.append(arr.reduce(0, +))
    return totalCash
}
var result = calculateCash(cash: arr)
 print("Cash inside wallet: \(result) \n")
/*
Exercise 3
Create a func isEvenNumber to calculate if a number is odd or even. If the number is even func should return true.
Run the func.
*/
func isEvenNumber(_ a:Int) -> Int {// ->bool {
    if a % 2 == 0 {
        print("Number is even:", true)//return number % 2 == 0 }
    
    }
    else {
        print("Number is even: ", false)
    }
    return a
}
//print statement

isEvenNumber(55)
print("\n")
/*
Exercise 4
Create a func createArray to calculate some number from start: to end: than return Int array.
Declare array and put createArray(from: 1, to: 100)
print(array)
*/
func createArray(from firstNumber: Int, to lastNumber: Int) -> [Int] {
    var array = [Int]()
    for i in firstNumber ... lastNumber{
        array.append(i)
    }
    return array
}
var array = createArray(from: 1, to: 100)
print("\(array) \n")
/*
Exercise 5
Create for loop.
Use array result from Exercise 4.
Use isEvenNumber from Exercise 3.
Calculate and remove isEvenNumber using if array.firstIndex of number, inside the if array.remove at index.
It should be 1/2 of createArray and started from [1,3,5.....
*/
//first option
var newArr = [Int]()
for numb in array {
    if numb % 2 == 1 {
    newArr.append(numb)
    }
}
print("\(newArr) \n")
//second option
var oddNum = [Int]()
for i in array where i % 2 == 1 {
    oddNum.append(i)
    }
print("\(oddNum) \n")
//third option
let filteredOddNumbers = array.filter { $0 % 2 == 1 }
print("\(filteredOddNumbers)\n")
//fourth option
for i in stride(from: 1, to: 100, by: 2) {
    print(i)
}

