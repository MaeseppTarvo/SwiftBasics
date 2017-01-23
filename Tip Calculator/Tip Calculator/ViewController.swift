//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Tarvo Mäesepp on 22/01/2017.
//  Copyright © 2017 Tarvo Mäesepp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var sumTextField: UITextField!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var percentOfSumLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var percentageSlider: UISlider!
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sliderValueDidChange(_ sender: Any) {
        calculateTip()
        
    }
    
    func calculateTip(){
        let percentage = Int(percentageSlider.value)
        
        tipPercentageLabel.text = ("Tip(\(percentage)%)")
        
        if let sum = Double(sumTextField.text!){
            
            let tip = ((Double(percentage)*sum)/100)
            percentOfSumLabel.text = String("€\(tip)")
            
            let total = sum + tip
            
            totalLabel.text = String(total)
            
            
        }else{
            //User didn't enter sum into "sumTextField"
        }
    }

}

