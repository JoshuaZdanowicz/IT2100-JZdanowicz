//
//  ViewController.swift
//  Lab09JZdanowicz
//
//  Created by Joshua Zdanowicz on 3/21/19.
//  Copyright © 2019 Joshua Zdanowicz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userOutput: UILabel!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userEmail: UILabel!
    @IBOutlet weak var favoriteLanguage: UILabel!
    @IBOutlet weak var selectedAction:UITextView!
    
    var nameStr: String?
    var emailStr: String?
    var nameTextField: UITextField?
    var emailTextField: UITextField?

    
    
    
    @IBAction func showAltertWithFields(_ sender: Any) {
        
        let alert = UIAlertController(title: "Enter Name and Email", message: "name and email address required.", preferredStyle: .alert)
        
        present(alert, animated: true, completion: nil)
    }
        
     @IBAction func showAlertWithOptions(_ sender: Any) {
        
        let alert = UIAlertController(title: "Select Language  ", message: "Please pick a programming language .",
            preferredStyle: .alert)

        present(alert, animated: true, completion: nil)
        }

    @IBAction func showActionSheet(_ sender: Any) {
        
        let actionsheet = UIAlertController(title: "Form Complete.", message: "Do you want to send this info?", preferredStyle: .actionSheet)
        
                present(actionsheet, animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
}

