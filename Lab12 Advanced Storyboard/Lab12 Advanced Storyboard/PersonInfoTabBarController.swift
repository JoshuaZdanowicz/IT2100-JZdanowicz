//
//  PersonInfoTabBarController.swift
//  Lab12 Advanced Storyboard
//
//  Created by Joshua Zdanowicz on 4/15/19.
//  Copyright © 2019 Joshua Zdanowicz. All rights reserved.
//

import UIKit

class PersonInfoTabBarController: UITabBarController {

    public var firstName = ""
    public var lastName = ""
    public var middleName = ""
    public var addr1 = ""
    public var addr2 = ""
    public var city = ""
    public var state = ""
    public var zip = ""
    public var email = ""
    
    /*
     @IBOutlet weak var inputAddress1: UITextField!
     @IBOutlet weak var inputAddress2: UITextField!
     @IBOutlet weak var inputCity: UITextField!
     @IBOutlet weak var inputState: UITextField!
     @IBOutlet weak var inputZip: UITextField!
     @IBOutlet weak var inputEmail: UITextField!
 */
    
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
