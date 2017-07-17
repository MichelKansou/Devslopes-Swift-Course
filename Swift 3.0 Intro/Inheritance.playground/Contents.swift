//: Playground - noun: a place where people can play

import UIKit

class Vehicule {
    var tires = 4
    var make: String?
    var model: String?
    var currentSpeed: Double = 0
    
    init() {
        print("I'm the parent")
    }
    
    func drive(speedIncrease: Double) {
        currentSpeed += speedIncrease * 2
    }
    
    func brake() {
        
    }
}

class SportsCar: Vehicule {
    
    override init() {
        super.init()
        print("I'm the child")
        make = "BMW"
        model = "3 series"
    }
    
    override func drive(speedIncrease: Double) {
        currentSpeed += speedIncrease * 3
    }
    
}

let car = SportsCar()

class Truck: Vehicule {
    override init() {
        super.init()
    }
    
    override func drive(speedIncrease: Double) {
        currentSpeed += speedIncrease * 5
    }
}