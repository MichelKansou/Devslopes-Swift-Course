//: Playground - noun: a place where people can play

import UIKit

protocol Vehicule: CustomStringConvertible{
    
    var isRunning: Bool { get set }
    var make: String { get set }
    var model: String { get set }
    
    mutating func start()
    mutating func turnOff()

}

extension Vehicule {
    
    var makeModel: String {
        return "\(make) \(model)"
    }
    
    
    mutating func start() {
        if isRunning {
            print("Already started")
        } else {
            isRunning = true
            print("\(self.description) fired up!")
        }
    }
    
    mutating func turnOff() {
        
        if isRunning {
            isRunning = false
            print("\(self.description) shut down")
        } else {
            print("Already dead!")
        }
    }
}

struct SportCar: Vehicule {

    var isRunning: Bool = false
    
    var make: String
    var model: String
    
    
    var description: String {
      return self.makeModel
    }

}


class SemiTruck: Vehicule {
    
    var isRunning: Bool = false
    
    var make: String
    var model: String
    
    
    init(isRunning: Bool, make: String, model: String) {
        self.isRunning = isRunning
        self.make = make
        self.model = model
    }
    
    var description: String {
       return self.makeModel
    }
    
    func blowAirHorn() {
        print("TOOOT 😶")
    }
}


var car1 = SportCar(isRunning: false, make: "Tesla", model: "Model 3")

var truck1 = SemiTruck(isRunning: false, make: "Peterbuilt", model: "Verago")

car1.start()
truck1.start()
truck1.blowAirHorn()

truck1.turnOff()

var vehiculeArray: Array<Vehicule> = [car1, truck1]
for vehicule in vehiculeArray {
    print("\(vehicule.makeModel)")
}

extension Double {
    var dollarString: String {
        return String(format: "$%.2f", self)
    }
}

var percent = 32.15 * 0.15

percent.dollarString








