//: [Previous](@previous)

import Foundation

// Type annotations
let name:String = "Camila"
let numOfExperience:Int = 4

// Array
let charInName:[String] = ["C","a","m","i","l","a"]

// String interpolation
print("Hello, my name is \(name)!")

// Dictionary
var engineerInfo:[String:String] = [
    "Name": "Camila",
    "Title": "iOS Developer"
]
engineerInfo["Degree"] = "Bachelor of Science"

// Set
var songPlaylist:[String] = (["At Your Name", "Wake", "Magnificent"])
songPlaylist.append("Everyday")

// Switch w/ default & Enums
enum Workday {
     case monday, tuesday, wednesday
}

var currentDay = Workday.tuesday

switch currentDay {
case .monday:
    print("It's monday")
case .tuesday:
    print("It's tuesday")
default:
    print("It's wednesday")
}

// switch w/ fallthrough
var intro = 1
switch intro {
case 1:
    print("My")
    fallthrough
case 2:
    print("name")
    fallthrough
case 3:
    print("is")
    fallthrough
default:
    print("Camila")
}

// Random
var randInt = Int.random(in:1...10)
print("Random Integer: \(randInt)")

var randDouble = Double.random(in:0...1)
print("Random Double: \(randDouble)")

// for loop
for character in charInName {
    print(character);
}

// for loop with range
for _ in 1...3 {
    print("Hello! ")
}

// while loop
var i = 0
while (i < 4) {
    print("In while loop")
    i+=1
}

// using break
var j = 1
while (j <= 6) {
    if j.isMultiple(of: 3) {
        break
    }
    print("\(j) is not a multiple of 3")
    j+=1
}

// continue
for c in 1..<12 {
    if (c.isMultiple(of: 3)){
        continue
    }
    print(c)
}

//labeled statements
outerLoop: for a in 1...3 {
    print("In outerloop")
    innerLoop: for b in 1...2 {
        print("In innerloop")
        if b == 3 {
            break outerLoop
        }
    }
}

/*
 Fizz Buzz
 Your goal is to loop from 1 through 100, and for each number:
 If it’s a multiple of 3, print “Fizz”
 If it’s a multiple of 5, print “Buzz”
 If it’s a multiple of 3 and 5, print “FizzBuzz”
 Otherwise, just print the number.
 */

// Need a range from 1 to 100 (including)
for i in 1...100 {
    //Check if number is a multiple of 3 AND 5 , print FizzBuzz
    if (i.isMultiple(of: 3) && i.isMultiple(of: 5)) {
        print("FizzBuzz")
        //Check if number is a multiple of 3, print Fizz
    } else if (i.isMultiple(of: 3)){
        print("Fizz")
        //Check if number is a multiple of 5, print Buzz
    } else if (i.isMultiple(of: 5)) {
        print("Buzz")
        // Else, print the number
    } else {
        print(i)
    }
}
