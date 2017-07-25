//
//  Location.swift
//  RainyShinyCloudy
//
//  Created by Michel Kansou on 25/07/2017.
//  Copyright © 2017 Michel Kansou. All rights reserved.
//

import CoreLocation

class Location {
    
    static var sharedInstance = Location()
    
    private init() {}
    
    var latitude: Double!
    var longitude: Double!
}
