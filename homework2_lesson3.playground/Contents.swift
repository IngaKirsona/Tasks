import UIKit

/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()
 */
var var1:Float = 3.14, var2:Float = 42.0
var sum = Double(var1) + Double(var2)
print("Result is \(sum)")

/*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 2.5 Output to the console the message: "When dividing <...> by <...>, the result is <...>, the remainder is <...>".
 */
var numberOne = 24
var numberTwo = 5
let result:Int = numberOne / numberTwo
let remainder = numberOne % numberTwo
print("When dividing \(numberOne) by \(numberTwo), the result is \(result), the remainder is \(remainder).")

/*
  Ex3:
 You need to buy several new MacBook Pro, each cost 1000 EUR.
 If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
 print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
 */
let qty = 10
var price = 1000
var totalSum = qty * price
if qty > 4 && qty < 10 {
    price = price - 100
    totalSum = totalSum - qty * 100
} else if qty >= 10 {
    price = price - 150
    totalSum = totalSum - qty * 150
}
print("New:\(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")


/*
  Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
 */
var userInputAge = "33a"
if let userInputAgeInt = Int(userInputAge){
    print("Sring of \(userInputAge) has a integer value of \(userInputAgeInt)!")
}else {
    print("String of \(userInputAge) can't be converted!")
}

/*
 Ex5:
 Calculate the number of years, months, days from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth)")
 */
//first attempt
let formatter = DateFormatter()
formatter.dateFormat = "dd.mm.yyyy"
let calendar = Calendar.current
let currentDate = Date()
let birthDate = formatter.date(from: "15.09.1984")
let daysPassed = calendar.dateComponents([.day], from: birthDate!, to: currentDate).day
print("From my birth date have passed \(String(describing: daysPassed))days.")
let days:Int = daysPassed!
let totalYears = Float(days) / 365.25
let totalMonth = Float(days) / 30.44
print("Total years: \(String(format: "%.2f", totalYears)) , total months: \(Int(totalMonth)), total days: \(days)")

//second attempt
let totalDaysFromBirth = 15 + 31 + 30 + 31/*days in 1984*/ + 35 * 365/*days in full years*/ + 8/*long years days*/ + 31 + 29 + 31 + 30 + 31 + 30 + 27
let totalYearsFromBirth = Double(totalDaysFromBirth) / 365.25
let totalMonthFromBirth = Double(totalDaysFromBirth) / 30.44
print("Total years: \(String(format: "%.2f",  totalYearsFromBirth)) , total months: \(Int(totalMonthFromBirth)), total days: \(totalDaysFromBirth)")

/*
 Ex6:
 Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
 Use switch case to print("I was born in the ... quarter")
 */
let monthOfBirth = 9
switch monthOfBirth {
case 1...3:
    print("I was born in the first quarter.")
case 4...6:
    print("I was born in the second quarter.")
case 7...9:
    print("I was born in the third quarter.")
case 10...12:
    print("I was born in the fourth quarter.")
        default:
            break
}
    <#code#>

