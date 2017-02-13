//
//  NumberViewController.swift
//  HellaCells
//
//  Created by Michael on 2/13/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import UIKit

class NumberViewController: UIViewController {
    
    @IBOutlet weak var numberLabel: UILabel!
    
    var number: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let number = number {
            numberLabel.text = String(number)
            navigationItem.title = String(number)
        }
    }


}
