//
//  DropShadow.swift
//  TacoPop
//
//  Created by Michel Kansou on 09/08/2017.
//  Copyright © 2017 Michel Kansou. All rights reserved.
//

import Foundation
import UIKit

protocol DropShadow {}

extension DropShadow where Self: UIView {
    
    func addDropShadow() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.7
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 5
    }
    
}
