//
//  FirstViewController.swift
//  Lab12 Advanced Storyboard
//
//  Created by Joshua Zdanowicz on 4/9/19.
//  Copyright © 2019 Joshua Zdanowicz. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var inputFirst: UITextField!
    @IBOutlet weak var inputMiddle: UITextField!
    @IBOutlet weak var inputLast: UITextField!

    @IBAction func clickSave(_ sender: Any) {
        //(parent as! PersonInfoTabBarController).firstName = inputFirst.text ?? ""
           var tabBarParent = self.tabBarController as! PersonInfoTabBarController
        tabBarParent.firstName = inputFirst.text ?? ""
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

