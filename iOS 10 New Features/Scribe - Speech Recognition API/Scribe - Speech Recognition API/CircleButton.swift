//
//  CircleButton.swift
//  Scribe - Speech Recognition API
//
//  Created by Michel Kansou on 20/08/2017.
//  Copyright © 2017 Michel Kansou. All rights reserved.
//

import UIKit


@IBDesignable
class CircleButton: UIButton {
    
    @IBInspectable var cornerRadius: CGFloat = 30.0 {
        didSet {
            setUpView()
        }
    }
    
    override func prepareForInterfaceBuilder() {
        setUpView()
    }
    
    func setUpView() {
        layer.cornerRadius = cornerRadius
    }

}
