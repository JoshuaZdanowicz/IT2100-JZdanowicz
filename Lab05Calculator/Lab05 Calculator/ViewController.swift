//
//  ViewController.swift
//  Lab05Calculator
//
//  Created by Joshua Zdanowicz on 2/13/19.
//  Copyright © 2019 Joshua Zdanowicz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var fullName: UILabel!
    @IBOutlet weak var inputFirst: UITextField!
    @IBOutlet weak var inputLast: UITextField!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        NSLog("button pressed!")
        NSLog(inputFirst.text ?? "")
        NSLog(inputLast.text ?? "")
        fullName.text = "\(inputFirst.text ?? "") \(inputLast.text ?? "")"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

