//
//  NotificationViewController.swift
//  MyContentExtension
//
//  Created by Michel Kansou on 21/08/2017.
//  Copyright © 2017 Michel Kansou. All rights reserved.
//

import UIKit
import UserNotifications
import UserNotificationsUI

class NotificationViewController: UIViewController, UNNotificationContentExtension {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func didReceive(_ notification: UNNotification) {
        
        guard let attachement = notification.request.content.attachments.first else {
            return
        }
        
        if attachement.url.startAccessingSecurityScopedResource() {
            let imageData = try? Data.init(contentsOf: attachement.url)
            
            if let img = imageData {
                imageView.image = UIImage(data: img)
            }
        }
    }

    func didReceive(_ response: UNNotificationResponse, completionHandler completion: @escaping (UNNotificationContentExtensionResponseOption) -> Void) {
        
        if response.actionIdentifier == "fistBump" {
            completion(.dismissAndForwardAction)
        } else if response.actionIdentifier == "dismiss" {
            completion(.dismissAndForwardAction)
        }
    }
}
