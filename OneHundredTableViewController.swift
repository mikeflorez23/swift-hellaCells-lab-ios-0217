//
//  OneHundredTableViewController.swift
//  HellaCells
//
//  Created by Michael on 2/13/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import UIKit

class OneHundredTableViewController: UITableViewController {
    
    let numberArray = Array(1...100)

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
        // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numberArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "numberCell", for: indexPath)
        let number = numberArray[indexPath.row]
        cell.textLabel?.text = String(number)
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier != "toNumberVC" {return}
        if let dest = segue.destination as? NumberViewController,
            let indexPath = tableView.indexPathForSelectedRow {
            dest.number = numberArray[(indexPath as NSIndexPath).row]
        }
    }
    

}
