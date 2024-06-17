//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Alexander Bokhulenkov on 17.06.2024.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var totalForPerson = "0"
    var tip: Float = 0.0
    var peoples = 2
    
    //  MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalLabel.text = totalForPerson
        settingsLabel.text = "Split between \(peoples) people, with \(String(format: "%.0f", tip))%."
    }
    
    // MARK: - Helpers
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        dismiss(animated: true)
    }
    
}
