//
//  ViewController.swift
//  Age of Laika
//
//  Created by Ely Kahn on 6/17/15.
//  Copyright (c) 2015 Ely Kahn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dogYearLabel: UILabel!
    
    @IBOutlet weak var realYearField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButton(sender: UIButton) {
        let realYears = realYearField.text.toInt()
        let conversionConstant = 7
        dogYearLabel.hidden = false
        
        dogYearLabel.text = "\(realYears! * conversionConstant)" + " " + "human years"
        
        realYearField.resignFirstResponder()
    }

    @IBAction func convertToRealDogYearsButtonPressed(sender: UIButton) {
        let stringFromTextField = realYearField.text
        let doubleFromTextField = Double((stringFromTextField as NSString).doubleValue)
        
        var realDogYears:Double
        dogYearLabel.hidden = false
        if doubleFromTextField > 2 {
            realDogYears = (10.5 * 2) + (doubleFromTextField - 2) * 4
        }
        else {
            realDogYears = doubleFromTextField * 10.5
        }
        dogYearLabel.text = "\(realDogYears)" + " " + "human years"
        realYearField.resignFirstResponder()
    }
}

