//
//  SecondViewController.swift
//  SendValue0308
//
//  Created by oui on 3/8/20.
//  Copyright © 2020 oui. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    /* stored property 는 optional 처리 하도록 한다. */
    var value: String?
    
    @IBOutlet weak var valueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        valueLabel.text = value
    }

}
