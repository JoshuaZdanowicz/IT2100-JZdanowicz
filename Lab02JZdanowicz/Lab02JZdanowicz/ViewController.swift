//
//  ViewController.swift
//  Lab02JZdanowicz
//
//  Created by Joshua Zdanowicz on 1/24/19.
//  Copyright © 2019 Joshua Zdanowicz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       var myMessage: UILabel
        myMessage=UILabel(frame:CGRect(x: 30.0, y: 50.0, width: 300.0, height: 50.0))
        myMessage.font=UIFont.systemFont(ofSize:48.0)
        myMessage.text = "Hello Josh"
        myMessage.textColor = UIColor(patternImage:UIImage(named: "Background")!)
        view.addSubview(myMessage)
        NSLog("Hello Josh, Again")
    }
        override func didReceiveMemoryWarning() {
           super.didReceiveMemoryWarning()
        }
    }





