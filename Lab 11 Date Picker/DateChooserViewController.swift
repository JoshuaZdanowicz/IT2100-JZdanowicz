//
//  DateChooserViewController.swift
//  Lab 11 Date Picker
//
//  Created by Joshua Zdanowicz on 4/2/19.
//  Copyright © 2019 Joshua Zdanowicz. All rights reserved.
//

import UIKit

class DateChooserViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        preferredContentSize = CGSize(width: 340,height: 380)
        
        

        

        // Do any additional setup after loading the view.
    }
    @IBAction func setDateTime(_ sender: UIDatePicker) {
        
        (presentingViewController as! ViewController).calculateDateDifference(
            (sender as! UIDatePicker).date)
    }
    
    @IBAction func dismissDateChooser(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        (presentingViewController as! ViewController).calculateDateDifference(NSDate())
    
    

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    }
    
}
