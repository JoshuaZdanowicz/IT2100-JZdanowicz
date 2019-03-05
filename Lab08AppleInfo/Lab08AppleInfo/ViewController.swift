//
//  ViewController.swift
//  Lab08AppleInfo
//
//  Created by Joshua Zdanowicz on 3/4/19.
//  Copyright © 2019 Joshua Zdanowicz. All rights reserved.
//
import UIKit
import WebKit

class ViewController: UIViewController {
    @IBOutlet weak var appleLink: UISegmentedControl!
    @IBOutlet weak var webApple: WKWebView!
    
    @IBAction func changeAppleLink(_ sender: UISegmentedControl) {
        var appleURLString = ""
        switch appleLink.selectedSegmentIndex { case 0:
            appleURLString = "https://en.wikipedia.org/wiki/Apple_Inc." default:
                appleURLString = " https://en.wikipedia.org/wiki/IOS"
                appleURLString = "https://en.wikipedia.org/wiki/Xcode"
                appleURLString = "https://en.wikipedia.org/wiki/Swift_(programming_language)"
        }
        let myURL = URL(string: appleURLString); let myRequest = URLRequest(url: myURL!); webApple.load(myRequest)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let myURL = URL(string: "https://en.wikipedia.org/wiki/Apple_Inc.")
        let myRequest = URLRequest(url: myURL!)
        webApple.load(myRequest)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() { super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}



