//
//  ViewController.swift
//  Hello0104
//
//  Created by oui on 1/4/20.
//  Copyright © 2020 oui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Outlet and Action
    //Outlet : change attributes
    //Action : add actions
    
    @IBOutlet weak var valueLabel: UILabel!
    @IBAction func changeValue(_ sender: Any) {
        valueLabel.text = "Hello, iOS"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

