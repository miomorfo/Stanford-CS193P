//
//  ViewController.swift
//  Stanford CS193P
//
//  Created by Fernando on 13-03-18.
//  Copyright © 2018 Fernando. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTyping = false
    
    
    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        
        if userIsInTheMiddleOfTyping{
            let textCurrentyInDisplay = display.text!
            display.text = textCurrentyInDisplay + digit
        } else {
            display.text = digit
            userIsInTheMiddleOfTyping = true
        }
        
   
    }
    
    var displayValue : Double {
        get {
           return Double(display.text!)!
        }
        set {
            display.text = String(newValue)
        }
    }
    
    @IBAction func performOperation(_ sender: UIButton) {
        userIsInTheMiddleOfTyping = false
        
        if let mathematicalSymbol = sender.currentTitle {
            switch mathematicalSymbol {
            case "∏":
                displayValue = Double.pi
            case "√":
                displayValue = sqrt(displayValue)
            default:
                break
            }
        }
        
    }
    
    

}

