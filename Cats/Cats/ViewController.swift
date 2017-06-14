//
//  ViewController.swift
//  Cats
//
//  Created by Michael Dippery on 7/16/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    let catList = [
        "(I've Had) The Time of My Life",
        "Be My Baby",
        "She's Like the Wind",
        "Hungry Eyes",
        "STAY",
        "Yes",
        "You Don't Own Me",
        "Hey Baby",
        "Overload",
        "Where Are You Tonight?",
        "In the Still of the Night"
    ]
   
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return catList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "KittyCell", for: indexPath)
        let kittyTitle = catList[indexPath.row]
        cell.textLabel?.text = kittyTitle
        return cell
    }
}
