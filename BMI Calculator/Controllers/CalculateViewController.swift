//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    

    @IBOutlet weak var weightValue: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var heightValue: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        setSliderValue()
//        weightSlider.value = Float(wSliderValue!)
//        heightSlider.value = Float(hSliderValue!)
    }
    
    @IBAction func heightSlider(_ sender: UISlider) {
        let hSliderValue = String(format: "%.2f", sender.value)
        heightValue.text = "\(hSliderValue)" + "m"
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        let wSliderValue = Int(sender.value)
        weightValue.text = "\(wSliderValue)" + "Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton){
        calculatorBrain.calculateBMI(height: heightSlider.value, weight: Int(weightSlider.value))
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBmiValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
}

