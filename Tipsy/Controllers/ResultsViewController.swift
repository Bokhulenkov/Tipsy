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
    
    //  MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
                totalLabel.text = totalForPerson
    }
    
    // MARK: - Helpers
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        dismiss(animated: true)
    }
    
    
}
