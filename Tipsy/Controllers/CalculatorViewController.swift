//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    private var tip: Float!
    
//    MARK: - Helpers
    
    
    @IBAction func tipChanged(_ sender: UIButton) {
        
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        sender.isSelected = true
        
        switch sender {
        case zeroPctButton: tip = 0
        case tenPctButton: tip = 10.0/100.0
        case twentyPctButton: tip = 20.0/100.0
        default: break
        }
    }
    
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
    }
    
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        if tip != nil {
            print(tip)
        } else {
            tip = 10.0/100.0
            print(tip)
        }
    }
    
    
}

