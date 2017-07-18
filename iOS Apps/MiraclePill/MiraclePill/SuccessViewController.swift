//
//  SuccessViewController.swift
//  MiraclePill
//
//  Created by Michel Kansou on 18/07/2017.
//  Copyright © 2017 Michel Kansou. All rights reserved.
//
import UIKit

class SuccessViewController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ReturnBtnPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}

