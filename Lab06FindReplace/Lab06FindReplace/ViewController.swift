//
//  ViewController.swift
//  Lab06FindReplace
//
//  Created by Joshua Zdanowicz on 2/19/19.
//  Copyright © 2019 Joshua Zdanowicz. All rights reserved.

/*I'm not sure what to do to get this app to run properly, first in terms of my logic which I'm sure is wrong/incomplete and the breakpoint at line 17. Not even sure if my connections to the storyboard are correct.*/

 
 
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var FindInput: UITextField!
    @IBOutlet weak var ReplaceInput: UITextField! //FIX ME:Thread 1: breakpoint 1.4
    @IBOutlet weak var TextInput: UITextView!
    
    
    
    @IBAction func UpdateText(_ sender: UIButton) {
        TextInput.text=FindInput.text!
        
        TextInput.text=ReplaceInput.text!
        
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}
 
