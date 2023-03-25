//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Anisa Fatimah Azzahra on 25/03/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain{
    var bmi: BMI?
    
    func getBmiValue()->String{
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "No advice available."
    }
    
    func getColor()-> UIColor{
        return bmi?.color ?? .clear
    }
    
    mutating func calculateBMI(height: Float, weight: Int){
        let bmiValue = Float(weight) / pow(height, 2)

        switch bmiValue {
        case ..<18.5:
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: .blue)
        case 18.5...24.9:
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: .green)
        default:
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: .red)
        }
        
        
    }
}
