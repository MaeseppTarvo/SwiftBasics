//
//  ViewController.swift
//  Date & Time
//
//  Created by Tarvo Mäesepp on 23/01/2017.
//  Copyright © 2017 Tarvo Mäesepp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dateAndTimeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Timer to update label with 1 second interval
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateLabel), userInfo: nil, repeats: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateLabel(){
        let dateFormatter = DateFormatter()
        dateFormatter.timeStyle = .medium
        dateFormatter.dateStyle = .medium
        dateAndTimeLabel.text = dateFormatter.string(from: Date())
    }


}

