//: Playground - noun: a place where people can play

import UIKit

// Factorials of non negative integer
// 1! = 1
// 2! = 1 * 2 = 2
// 3! = 1 * 2 * 3 = 6
// 7! = 1 * 2 * 3 * 4 * 5 * 6 * 7 = 5040

func factorialFirst(num: Int) -> Int {
    
    var factorial = 0
    
    for x in 1...num {
        if factorial != 0 {
            factorial = factorial * x
        } else {
            factorial = 1
        }
    }
    
    return factorial
}


factorialFirst(num: 7)

func factorialRec(num: Int) -> Int {
    if num == 1 {
        return 1
    } else {
        return num * factorialRec(num: num - 1)
    }
}

factorialRec(num: 7)

