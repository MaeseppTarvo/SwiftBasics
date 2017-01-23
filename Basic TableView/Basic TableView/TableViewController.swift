//
//  ViewController.swift
//  Basic TableView
//
//  Created by Tarvo Mäesepp on 23/01/2017.
//  Copyright © 2017 Tarvo Mäesepp. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var arrayOfAnimals = ["Cat", "Dog", "Snake", "Tiger", "Lion"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfAnimals.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "animalCell", for: indexPath)
        
        cell.textLabel?.text = arrayOfAnimals[indexPath.row]
        
        return cell
    }


}

