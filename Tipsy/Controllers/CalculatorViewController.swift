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
    
    private var tip: Float = 0.1
    private var peoples = 2
    private var resultToDecimal = ""
    
    
    //    MARK: - Helpers
    
    @IBAction func tipChanged(_ sender: UIButton) {
        //        скрыть клавиатуру
        billTextField.endEditing(true)
        
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        sender.isSelected = true
        
        guard let buttonTitle = sender.currentTitle else { return }
        
        let numberOfButtonTitle = buttonTitle.dropLast()
        guard let currentTipCount = Float(numberOfButtonTitle) else { return }
        tip = currentTipCount / 100.0
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        sender.minimumValue = 2
        sender.maximumValue = 10
        peoples = Int(sender.value)
        let textValue = String(peoples)
        splitNumberLabel.text = textValue
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        guard let totalNumber = Float(billTextField.text ?? "0") else { return }
        
        let result = (totalNumber + (totalNumber * tip)) / Float(peoples)
        resultToDecimal = String(format: "%.2f", result)
        print(resultToDecimal)
        
        performSegue(withIdentifier: "toResultScrean", sender: nil)
    }
//    segue передача данных
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "toResultScrean" else { return }
        guard let destination = segue.destination as? ResultsViewController else { return }
        destination.totalForPerson = resultToDecimal
    }
}

