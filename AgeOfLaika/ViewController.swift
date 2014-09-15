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
        let years = humanAge.text.toInt()!
        dogAge.text = "\(years*7) in dog years"
        dogAge.hidden = false;
    }

}

