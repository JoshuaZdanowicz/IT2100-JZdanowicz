//
//  ViewController.swift
//  Lab05 Calculator
//
//  Created by Joshua Zdanowicz on 2/15/19.
//  Copyright © 2019 Joshua Zdanowicz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var DisplayFullName: UILabel!
    @IBOutlet weak var InputName: UITextField!
    
    @IBAction func ButtonIsPressed(_ sender: UIButton) {
        DisplayFullName.text=InputName.text!
        

    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()        // Do any additional setup after loading the view, typically from a nib.
    }
    


}

