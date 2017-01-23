//
//  SecondViewController.swift
//  Data Passing
//
//  Created by Tarvo Mäesepp on 23/01/2017.
//  Copyright © 2017 Tarvo Mäesepp. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    var receivedValue: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = receivedValue
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
