//
//  RoundedImageView.swift
//  MVCTest
//
//  Created by Michel Kansou on 20/07/2017.
//  Copyright © 2017 Michel Kansou. All rights reserved.
//

import UIKit

class RoundedImageView: UIImageView {

    override func awakeFromNib() {
        self.layer.cornerRadius = 5.0
        self.clipsToBounds = true
    }

}
