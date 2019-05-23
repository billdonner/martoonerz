//
//  ViewController.swift
//  gbmapp
//
//  Created by william donner on 5/23/19.
//  Copyright © 2019 midnightrambler. All rights reserved.
//

import UIKit
import WebKit

let url = URL(string: "https://martoons.myportfolio.com")!

class ViewController: UIViewController,WKNavigationDelegate {
var webview: WKWebView!
    
    override func loadView() {
        webview = WKWebView()
        webview.navigationDelegate = self
        view = webview
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        webview.load(URLRequest(url:url))
        
webview.allowsBackForwardNavigationGestures = true
        
    }


}

