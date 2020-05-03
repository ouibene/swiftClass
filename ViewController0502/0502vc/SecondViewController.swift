//
//  SecondViewController.swift
//  0502vc
//
//  Created by oui on 5/2/20.
//  Copyright © 2020 oui. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var value: String?
    
    @IBOutlet weak var valueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        valueLabel.text = value
        
        print(self, #function)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print(self, #function)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print(self, #function)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        print(self, #function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        print(self, #function)
    }
    
    deinit {
        print(self, #function)
    }
}
