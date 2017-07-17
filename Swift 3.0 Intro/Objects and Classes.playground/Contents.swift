//: Playground - noun: a place where people can play

import UIKit


class Vehicule {
    var tires = 4
    var headlights = 2
    var horsepower = 468
    var model = ""
    
    func drive() {
        
    }
    
    func brake() {
        
    }
}


let bmw = Vehicule()

bmw.model = "328i"

let ford = Vehicule()
ford.model = "F150"
ford.brake()


func passingObjectByReference(vehicule: Vehicule) {
    vehicule.model = "Cheese"
}

print(ford.model)

passingObjectByReference(vehicule: ford)

print(ford.model)

var someoneAge = 20

func passByValue(age: Int) {
    let newAge = age
}

passByValue(age: someoneAge)
