//: Playground - noun: a place where people can play

import UIKit

var lotteryWinnings: Int?

if lotteryWinnings != nil {
    print(lotteryWinnings!)
}

lotteryWinnings = 100

if let winnings = lotteryWinnings {
    print(winnings)
}

class Car {
    var model: String?
    
}

var vehicle: Car?

//if let v = vehicle {
//    if let m = v.model {
//        print(m)
//    }
//}

vehicle = Car()
vehicle?.model = "BWM"

if let v = vehicle, let m = v.model{
    print(m)
}

var cars: [Car]?

cars = [Car]()

if let carArray = cars, carArray.count > 0 {
    
} else {
    cars?.append(Car())
}

class Person {
    private var _age: Int!
    
    var age: Int {
        if _age == nil {
            _age = 0
        }
        
        return self._age
    }

    func setAge(newAge: Int) {
        self._age = newAge
    }
}

var jack = Person()

jack.setAge(newAge: 22)

print(jack.age)

class Dog {
    var species: String
    
    init(speciesType: String) {
        self.species = speciesType
    }
}

var lab = Dog(speciesType: "Golden Dog")

print(lab.species)
