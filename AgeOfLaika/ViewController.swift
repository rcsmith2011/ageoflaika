//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by RICHARD SMITH on 9/14/14.
//  Copyright (c) 2014 RICHARD SMITH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var dogAge: UILabel!
    @IBOutlet var humanAge: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertToDogYears(sender: UIButton) {
        humanAge.resignFirstResponder()
        var years = humanAge.text.toInt()
        if (years == nil) {
            years = 0
        }
        dogAge.text = "\(years! * 7) in dog years"
        dogAge.hidden = false;
    }

    @IBAction func convertToRealDogYears(sender: UIButton) {
        
        humanAge.resignFirstResponder()
        var yearsText = humanAge.text
        var years = (yearsText as NSString).floatValue
//        if (years == nil) {
//            years = 0
//        }
        if (years <= 2)
        {
            years *= 10.5
        }
        else
        {
            years = (years-2)*4 + 10.5*2
        }
        dogAge.text = "\(years) in dog years"
        dogAge.hidden = false;
        
    }
}

