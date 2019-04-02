//
//  ViewController.swift
//  Lab 11 Date Picker
//
//  Created by Joshua Zdanowicz on 4/2/19.
//  Copyright © 2019 Joshua Zdanowicz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ouputLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
func calculateDateDifference(chosenDate: NSDate) {
      let todaysDate: NSDate = NSDate()
    let difference: TimeInterval =
        todaysDate.timeIntervalSince(chosenDate as Date) / 86400

    let dateFormat: DateFormatter = DateFormatter()
           dateFormat.dateFormat = "MMMM d, yyyy hh:mm:ssa"
    
    let todaysDateString: String = dateFormat.string(from: todaysDate as Date)
    let chosenDateString: String = dateFormat.string(from: chosenDate as Date)
    
      let differenceOutput: String = NSString(format:
               "Difference between chosen date (%@) and today (%@) in days: %1.2f",
                 chosenDateString, todaysDateString, fabs(difference)) as String
    
        outputLabel.text=differenceOutput
}
