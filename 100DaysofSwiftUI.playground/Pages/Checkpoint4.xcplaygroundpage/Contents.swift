//: [Previous](@previous)

import Foundation

/*
Write a function that accepts an integer from 1 through 10,000, and returns the integer square root of that number. That sounds easy, but there are some catches:

 You can’t use Swift’s built-in sqrt() function or similar – you need to find the square root yourself.
 If the number is less than 1 or greater than 10,000 you should throw an “out of bounds” error.
 You should only consider integer square roots – don’t worry about the square root of 3 being 1.732, for example.
 If you can’t find the square root, throw a “no root” error.
 */

enum SqrtError: Error {
    case outOfBounds, noRoot
}

// write a function that accepts 1 through 10,000
func getSqrt(num:Int) throws -> Int {
        // throw an "out of bounds" error if # is not in range
        if (num < 1 || num > 10_000) {
            throw SqrtError.outOfBounds
        } else {
            for n in 1...100 {
                // Get square root of number
                if (n * n == num) {
                    return n
                }
            }
            // if can't find square root, throw a "no root" error
            throw SqrtError.noRoot
        }
}

// Handle Errors
do {
    try print(getSqrt(num:18))
} catch SqrtError.outOfBounds {
    print("Number must be between 1 to 10,000")
} catch SqrtError.noRoot {
    print("Number has no square root")
}
