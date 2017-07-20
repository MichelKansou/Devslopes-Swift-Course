//
//  Person.swift
//  MVCTest
//
//  Created by Michel Kansou on 20/07/2017.
//  Copyright © 2017 Michel Kansou. All rights reserved.
//

import Foundation

class Person {
    private var _firstName: String!
    private var _lastName: String!
    
    var firstName: String {
        get {
            return _firstName
        }
        set {
            _firstName = newValue
        }
    }
    
    var lastName: String {
        get {
            return _lastName
        }
        set {
            _lastName = newValue
        }
    }
    
    init(firstName: String, lastName: String) {
        self._firstName = firstName
        self._lastName = lastName
    }
    
    var fullName: String {
        if let first = _firstName, let last = _lastName {
            return "\(first) \(last)"
        } else {
            return ""
        }
    }
}
