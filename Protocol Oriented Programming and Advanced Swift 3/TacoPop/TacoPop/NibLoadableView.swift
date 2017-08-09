//
//  NibLoadableView.swift
//  TacoPop
//
//  Created by Michel Kansou on 09/08/2017.
//  Copyright © 2017 Michel Kansou. All rights reserved.
//

import UIKit

protocol NibLoadableView: class {}

extension NibLoadableView where Self: UIView {
    
    static var nibName: String {
        return String(describing: self)
    }
}
