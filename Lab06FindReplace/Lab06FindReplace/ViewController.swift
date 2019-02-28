//
//  ViewController.swift
//  Lab06FindReplace
//
//  Created by Joshua Zdanowicz on 2/19/19.
//  Copyright © 2019 Joshua Zdanowicz. All rights reserved.

 
 
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var FindInput: UITextField!
    @IBOutlet weak var ReplaceInput: UITextField!
    @IBOutlet weak var TextInput: UITextView!
    
    
    
    @IBAction func UpdateText(_ sender: UIButton) {
        NSLog("update text called")
        NSLog(FindInput.text!)
        NSLog(ReplaceInput.text!)
        NSLog(TextInput.text!)
        //TextInput.text=FindInput.text!
        
        //TextInput.text=ReplaceInput.text!
        
        TextInput.text = TextInput.text!.replacingOccurrences(of: FindInput.text!, with: ReplaceInput.text!)
        
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}
 
