//
//  ViewController.swift
//  NewNotifications
//
//  Created by Michel Kansou on 21/08/2017.
//  Copyright © 2017 Michel Kansou. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1. REQUEST PERMISSION
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound], completionHandler: { (granted, error) in
            
            if granted {
                print("Notification access granted")
            } else {
                print(error!.localizedDescription)
            }
            
        })
    }

    @IBAction func notifyButtonTapped(_ sender: UIButton) {
        scheduleNotification(inSecondes: 5, completion: { success in
            if success {
                print("Successfully scheduled notification")
            } else {
                print("Error scheduling notification")
            }
        })
    }
    
    func scheduleNotification(inSecondes: TimeInterval, completion: @escaping (_ Success: Bool) -> ()) {
        
        // Add an attachement
        let myImage = "rick_grimes"
        guard let imageUrl = Bundle.main.url(forResource: myImage, withExtension: "gif") else {
            completion(false)
            return
        }
        
        var attachement: UNNotificationAttachment
        
        attachement = try! UNNotificationAttachment(identifier: "myNotification", url: imageUrl, options: .none)
        
        
        let notif = UNMutableNotificationContent()
        
//        // ONLY FOR EXTENSION
//        notif.categoryIdentifier = "myNotificationCategory"
        
        notif.title = "New Notification"
        notif.subtitle = "These are great!"
        notif.body = "The new notification options in iOS 10 are what I've always dreamed of!"
        
        notif.attachments = [attachement]
        
        let notifTrigger = UNTimeIntervalNotificationTrigger(timeInterval: inSecondes, repeats: false)
        
        let request = UNNotificationRequest(identifier: "myNotification", content: notif, trigger: notifTrigger)
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: { error in
            
            if error != nil {
                print(error!)
                completion(false)
            } else {
                completion(true)
            }
        })
    }
}

