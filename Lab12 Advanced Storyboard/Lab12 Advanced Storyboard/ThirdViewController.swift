//
//  ThirdViewController.swift
//  Lab12 Advanced Storyboard
//
//  Created by Joshua Zdanowicz on 4/9/19.
//  Copyright © 2019 Joshua Zdanowicz. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    @IBOutlet weak var outputFirstName: UILabel!
    @IBOutlet weak var outputMiddleName: UILabel!
    @IBOutlet weak var outputLastName: UILabel!
    @IBOutlet weak var outputAddress1: UILabel!
    @IBOutlet weak var outputAddress2: UILabel!
    @IBOutlet weak var outputCity: UILabel!
    @IBOutlet weak var outputState: UILabel!
    @IBOutlet weak var outputZip: UILabel!
    @IBOutlet weak var outputEmail: UILabel!



    
    
    override func viewDidAppear(_ animated: Bool) {
        let tabBarParent = self.tabBarController as! PersonInfoTabBarController
        outputFirstName.text = tabBarParent.firstName
        let tabBarParent2 = self.tabBarController as! PersonInfoTabBarController
        outputMiddleName.text = tabBarParent2.middleName
        let tabBarParent3 = self.tabBarController as! PersonInfoTabBarController
    outputLastName.text = tabBarParent3.lastName
        let tabBarParent4 = self.tabBarController as! PersonInfoTabBarController
        outputAddress1.text = tabBarParent4.addr1
        let tabBarParent5 = self.tabBarController as! PersonInfoTabBarController
        outputAddress2.text = tabBarParent5.addr2
        let tabBarParent6 = self.tabBarController as! PersonInfoTabBarController
        outputCity.text = tabBarParent6.city
        let tabBarParent7 = self.tabBarController as! PersonInfoTabBarController
        outputState.text = tabBarParent7.state
        let tabBarParent8 = self.tabBarController as! PersonInfoTabBarController
        outputZip.text = tabBarParent8.zip
        let tabBarParent9 = self.tabBarController as! PersonInfoTabBarController
        outputEmail.text = tabBarParent9.email
        
        
        
        
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
