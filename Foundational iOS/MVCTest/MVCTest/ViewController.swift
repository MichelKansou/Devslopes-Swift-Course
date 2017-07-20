//
//  ViewController.swift
//  MVCTest
//
//  Created by Michel Kansou on 20/07/2017.
//  Copyright © 2017 Michel Kansou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var fullName: UILabel!
    @IBOutlet weak var renameField: UITextField!
    
    let person = Person(firstName: "Steve", lastName: "Jobs")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fullName.text = person.fullName
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func renamePressed(_ sender: Any) {
        if let newFirstName = renameField.text {
            person.firstName = newFirstName
            fullName.text = person.fullName
        }
    }

}

