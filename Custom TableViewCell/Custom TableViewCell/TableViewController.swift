//
//  TableViewController.swift
//  Custom TableViewCell
//
//  Created by Tarvo Mäesepp on 23/01/2017.
//  Copyright © 2017 Tarvo Mäesepp. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    let arrayOfAnimals: [String] = ["Cat", "Dog", "Snake", "Tiger", "Lion"]
    
    let arrayOfAnimalAges: [String] = ["12", "3", "6", "8", "1"]

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }


    

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrayOfAnimals.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: CustomCell = (tableView.dequeueReusableCell(withIdentifier: "animalCell", for: indexPath) as? CustomCell)!

        cell.nameLabel.text = arrayOfAnimals[indexPath.row]
        
        cell.ageLabel.text = arrayOfAnimalAges[indexPath.row]

        return cell
    }


}
