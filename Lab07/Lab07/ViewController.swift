//
//  ViewController.swift
//  Lab07
//
//  Created by Joshua Zdanowicz on 3/3/19.
//  Copyright © 2019 Joshua Zdanowicz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var sliderOuput: UILabel!
    @IBOutlet weak var stepperOutput: UILabel!
    
    @IBOutlet weak var sliderValue: UISlider!
    @IBOutlet weak var stepperValue: UIStepper!
    
    @IBAction func changeSlider(_ sender: UISlider) {
        
        sliderOuput.text="Slider:"+String(format: "%.0f",
        sliderValue.value)

    }
    
    @IBAction func changeStepper(_ sender: UIStepper) {
        
        stepperOutput.text="Stepper: "+String(format: "%.0f",
                                              stepperValue.value)

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

