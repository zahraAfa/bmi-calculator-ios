//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Anisa Fatimah Azzahra on 23/03/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController{
    var bmiValue = "00.0"
    override func viewDidLoad() {
        super.viewDidLoad()
//        view.backgroundColor = .red
        
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
    }
}
