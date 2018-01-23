//
//  ViewController.swift
//  tippy
//
//  Created by Israel Andrade on 1/22/18.
//  Copyright © 2018 Israel Andrade. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Variable to indicate the percent option
    @IBOutlet weak var tipControl: UISegmentedControl!
    //The amount for the bill
    @IBOutlet weak var billField: UITextField!
    //The tip that should be left
    @IBOutlet weak var tipLabel: UILabel!
    //The total value including the bill and tip
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //When taping on the screen hid the keyboard
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    //The function to calculate the total amount
    @IBAction func calculateTip(_ sender: Any) {
        let tipPercentages = [0.18, 0.20, 0.25]
        //Check for valid values
        let bill = Double(billField.text!) ?? 0
        let tip = bill *    tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        tipLabel.text = String(format: "$%.2f" , tip)
        totalLabel.text = String(format: "$%.2f" , total)
    }
}

