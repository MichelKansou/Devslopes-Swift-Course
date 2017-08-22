//
//  ViewController.swift
//  PushMyNotifs
//
//  Created by Michel Kansou on 21/08/2017.
//  Copyright © 2017 Michel Kansou. All rights reserved.
//

import UIKit
import Firebase
import FirebaseInstanceID
import FirebaseMessaging
import UserNotifications

class ViewController: UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound], completionHandler: { (granted, error) in
            
            if granted {
                print("Notification access granted")
            } else {
                print(error!.localizedDescription)
            }
            
        })
        
    }
}

