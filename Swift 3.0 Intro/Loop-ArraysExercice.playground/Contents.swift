//: Playground - noun: a place where people can play

import UIKit

var stringArray = [String]()
var doubleArray:[Double] = [1.0, 2.0, 7.0, 4.0]

var secondArray = [1, 2, 3, 4, 5]

for i in 0..<3 {
    stringArray.append("Test \(i)")
}

doubleArray.max()

for i in 0..<doubleArray.count {
    doubleArray.remove(at: 0)
}

secondArray.removeAll()


var oddNumber = [Int]()

for i in 0..<100 {
    oddNumber.append(i)
}

var sum = [Int]()

for i in 0..<oddNumber.count {
    sum.append(oddNumber[i] + 5)
}

var index = 0
repeat {
    print(sum[index])
    index += 1
} while index < sum.count