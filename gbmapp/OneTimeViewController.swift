//
//  OneTimeViewController.swift
//  martoons
//
//  Created by william donner on 5/30/19.
//  Copyright © 2019 midnightrambler. All rights reserved.
//

import UIKit

class OneTimeViewController: UIViewController {
    private func openImessage() {
    if UIApplication.shared.canOpenURL(URL(string:"sms:")!) {
    UIApplication.shared.open(URL(string:"sms:")!, options: [:], completionHandler: nil)
    }
    }
    
    @IBAction func openImessagePressed(_ sender: Any) {
        openImessage()
    }
    
    @IBAction func gotItPressed(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
