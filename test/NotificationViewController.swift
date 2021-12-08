//
//  NotificationViewController.swift
//  test
//
//  Created by Kushagra Mishra on 08/12/21.
//

import UIKit
import UserNotifications
import UserNotificationsUI

class NotificationViewController: UIViewController, UNNotificationContentExtension {

    @IBOutlet var label: UILabel?
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet var myLabel: UIView!
    
    var mytext = "snooze remaining"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any required interface initialization here.
        self.textLabel?.text = mytext
    }
    
    func didReceive(_ notification: UNNotification) {
        self.label?.text = notification.request.content.body
        
         }

}
