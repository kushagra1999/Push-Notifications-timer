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
    var seconds = 5
    var timer = Timer()
    @IBOutlet var label: UILabel!
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet var myLabel: UIView!
    
    var mytext = "snooze remaining"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any required interface initialization here.
        let min = seconds / 60 % 60
        let sec = seconds % 60
        self.label.text = String(format: "%02i:%02i", min, sec)
        self.textLabel?.text = mytext
       
    }
    
    func didReceive(_ notification: UNNotification) {
//        self.label?.text = notification.request.content.body
//        let userInfo = notification.request.content.userInfo
//        if let name = userInfo["name"] as? String {
//            print("Custom data received: \(name)")
//            self.textLabel?.text = notification.request.content.body
//        }
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
         }
    @objc func updateTimer () {
    
        let min = seconds / 60 % 60
        let sec = seconds % 60
    
        if seconds > 0 {
            self.label.text = String(format: "%02i:%02i", min, sec)
            seconds -= 1
        } else {
            timer.invalidate()
    
            self.label.text! = "Graffiti graffiti everywhere"
        }
    }
    
//    func details () {
//        let userInfo = notification.request.content.userInfo
//        print userInfo["userId"]
//    }
}



//var timer = Timer()
//
//
//override func viewDidLoad() {
//    super.viewDidLoad()
//    // Do any additional setup after loading the view.
//    timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
//}
//
//
//@objc func updateTimer () {
//
//    let min = seconds / 60 % 60
//    let sec = seconds % 60
//
//    if seconds > 0 {
//        countdownLabel.text = String(format: "%02i:%02i", min, sec)
//        seconds -= 1
//    } else {
//        timer.invalidate()
//
//        countdownLabel.text! = "Gotowe!"
//    }
//}
