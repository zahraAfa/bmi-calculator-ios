//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var hSliderValue = 1.0
    var wSliderValue = 60
    var bmiValue = 0.0

    @IBOutlet weak var weightValue: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var heightValue: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setSliderValue()
        weightSlider.value = Float(wSliderValue)
        heightSlider.value = Float(hSliderValue)
    }
    
    @IBAction func heightSlider(_ sender: UISlider) {
        hSliderValue = Double(String(format: "%.2f", sender.value)) ?? 0
        setSliderValue()
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        wSliderValue = Int(sender.value)
        setSliderValue()
    }
    
    func setSliderValue() {
        heightValue.text = "\(hSliderValue)" + "m"
        weightValue.text = "\(wSliderValue)" + "Kg"
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        calculateBMI()
    }
    
    func calculateBMI(){
        bmiValue = Double(wSliderValue) / (hSliderValue*hSliderValue)
        
        print(bmiValue)
    }
}

