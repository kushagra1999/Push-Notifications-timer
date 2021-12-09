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

    @IBOutlet var label: UILabel!
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet var myLabel: UIView!
    
    var mytext = "Lets see if it will work now?"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any required interface initialization here.
        self.textLabel?.text = mytext
    }
    
    func didReceive(_ notification: UNNotification) {
        self.label?.text = notification.request.content.title
        
        if let dict = notification.request.content.userInfo as? [String:Any] {
                  if let dataDict = dict["Employee"] as? [String:Any],let type = dataDict["Name"] as? String{
                      self.label?.text = type
                  }
              }
//                if let name = userInfo["name"] as? String {
//                    print("Custom data received: \(name)")
//
//                }
//        self.label?.text = name as? String
//        if let notificationData = notification.request.content.userInfo as? [AnyHashable: Any] {
//
//            self.label.text = notificationData["name"] as! String
//                    // Grab the attachment
//                    }
        
         }

}
