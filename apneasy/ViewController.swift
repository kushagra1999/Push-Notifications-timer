//
//  ViewController.swift
//  apneasy
//
//  Created by Kushagra Mishra on 08/12/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        textLabel.text = "Go to home screen to test push notifications. Drop the APN file"
    }


}

