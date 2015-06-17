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

}

