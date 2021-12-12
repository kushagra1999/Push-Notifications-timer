//
//  NotificationViewController.swift
//  test
//
//  Created by Kushagra Mishra on 08/12/21.
//

import UIKit
import UserNotifications
import UserNotificationsUI
import WebKit
class NotificationViewController: UIViewController, UNNotificationContentExtension,WKNavigationDelegate {

//    @IBOutlet var label: UILabel!
//
//    @IBOutlet weak var textLabel: UILabel!
//    @IBOutlet var myLabel: UIView!
    var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
//    var mytext = "Lets see if it will work now?"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any required interface initialization here.
        let url = URL(string: "https://www.google.com")!
        webView.load(URLRequest(url: url))

    }
    
    func didReceive(_ notification: UNNotification) {
        self.preferredContentSize = CGSize(width: UIScreen.main.bounds.size.width, height: 1000)
            self.view.setNeedsUpdateConstraints()
            self.view.setNeedsLayout()
              }

}
