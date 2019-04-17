//
//  SecondViewController.swift
//  Lab12 Advanced Storyboard
//
//  Created by Joshua Zdanowicz on 4/9/19.
//  Copyright © 2019 Joshua Zdanowicz. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var inputAddress1: UITextField!
    @IBOutlet weak var inputAddress2: UITextField!
    @IBOutlet weak var inputCity: UITextField!
    @IBOutlet weak var inputState: UITextField!
    @IBOutlet weak var inputZip: UITextField!
    @IBOutlet weak var inputEmail: UITextField!
    
 @IBAction func clickSave(_ sender: Any) {
    
    let tabBarParent4 = self.tabBarController as! PersonInfoTabBarController
    tabBarParent4.addr1 = inputAddress1.text ?? ""
    
    let tabBarParent5 = self.tabBarController as! PersonInfoTabBarController
    tabBarParent5.addr2 = inputAddress2.text ?? ""
    
    let tabBarParent6 = self.tabBarController as! PersonInfoTabBarController
    tabBarParent6.city = inputCity.text ?? ""
    
    let tabBarParent7 = self.tabBarController as! PersonInfoTabBarController
    tabBarParent7.state = inputState.text ?? ""
    
    let tabBarParent8 = self.tabBarController as! PersonInfoTabBarController
    tabBarParent8.zip = inputZip.text ?? ""
    
    let tabBarParent9 = self.tabBarController as! PersonInfoTabBarController
    tabBarParent9.email = inputEmail.text ?? ""
    
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

