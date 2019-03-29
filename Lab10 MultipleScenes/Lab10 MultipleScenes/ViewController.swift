//
//  ViewController.swift
//  Lab10 MultipleScenes
//
//  Created by Joshua Zdanowicz on 3/27/19.
//  Copyright © 2019 Joshua Zdanowicz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    
    var nameText = ""
    
    @IBAction func gotoScene2(_ sender: UIButton) {
        
        self.nameText = nameTextField.text!
        performSegue(withIdentifier: "Go to Scene 2", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! Scene2ViewController
        vc.finalName = self.nameText
    }
}

