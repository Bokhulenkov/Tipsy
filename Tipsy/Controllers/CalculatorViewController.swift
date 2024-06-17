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
    
    private var tip: Int!
    
//    MARK: - Helpers
    
    
    @IBAction func tipChanged(_ sender: UIButton) {
        
        switch sender {
        case zeroPctButton: zeroPctButton.isSelected = true
                            tenPctButton.isSelected = false
                            twentyPctButton.isSelected = false
                            tip = 0
        case tenPctButton: zeroPctButton.isSelected = false
                            tenPctButton.isSelected = true
                            twentyPctButton.isSelected = false
                            tip = 10
        case twentyPctButton: zeroPctButton.isSelected = false
                            tenPctButton.isSelected = false
                            twentyPctButton.isSelected = true
                            tip = 20
        default: break
        }
    }
    
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
    }
    
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        if tip != nil {
            print(tip)
        } else {
            tip = 10
            print(tip)
        }
    }
    
    
}

