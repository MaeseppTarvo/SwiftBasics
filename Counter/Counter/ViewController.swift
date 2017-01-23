//
//  ViewController.swift
//  Counter
//
//  Created by Tarvo Mäesepp on 22/01/2017.
//  Copyright © 2017 Tarvo Mäesepp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var countLabel: UILabel!
    
    var count: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didTapTapButton(_ sender: Any) {
        count += 1
        updateCountLabel()
    }
    @IBAction func didTapResetButton(_ sender: Any) {
        count = 0
        updateCountLabel()
    }
    
    func updateCountLabel(){
        countLabel.text = String(count)
    }

}

