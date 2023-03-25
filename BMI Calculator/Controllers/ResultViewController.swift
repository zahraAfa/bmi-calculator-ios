//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Anisa Fatimah Azzahra on 23/03/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var recommendationLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue
        recommendationLabel.text = advice
        view.backgroundColor = color
    }

    @IBAction func recalculateButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }

}
