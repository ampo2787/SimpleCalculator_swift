//
//  ViewController.swift
//  swiftPractice
//
//  Created by JihoonPark on 29/12/2018.
//  Copyright © 2018 JihoonPark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var display: UILabel!
    var brain : CalculateBrain?
    var userIsInTheMiddleOfTypingANumber : Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        brain = CalculateBrain()
    }
    
    @IBAction func operatorPressed(_ sender: UIButton) {
        if userIsInTheMiddleOfTypingANumber {
            brain?.operand = Double(display.text!)!
            userIsInTheMiddleOfTypingANumber = false
        }
        let Operation = sender.titleLabel?.text
        let result = brain?.performOperation(operation: Operation!)
        display.text = String(result!)
    }
    
    @IBAction func digitPressed(_ sender: UIButton) {
        let digit = sender.titleLabel?.text
        
        if userIsInTheMiddleOfTypingANumber {
            display.text?.append(digit!)
        }
        else{
            display.text = digit
            userIsInTheMiddleOfTypingANumber = true
        }
    }
    
}

