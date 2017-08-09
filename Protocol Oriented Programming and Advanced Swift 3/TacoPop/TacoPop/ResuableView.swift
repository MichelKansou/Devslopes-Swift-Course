//
//  ResuableView.swift
//  TacoPop
//
//  Created by Michel Kansou on 09/08/2017.
//  Copyright © 2017 Michel Kansou. All rights reserved.
//

import UIKit

protocol ResuableView: class {}

extension ResuableView where Self: UIView {
    
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
