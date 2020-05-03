//
//  ViewController.swift
//  0503autolayout
//
//  Created by oui on 5/3/20.
//  Copyright © 2020 oui. All rightsb reserved.
//

import UIKit

class ViewController:
    UIViewController {
    @IBOutlet weak var bottomConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    
    @IBAction func toggleSize(_ sender: Any) {
        let halfHeight = heightConstraint.constant / 2
        if bottomConstraint.constant < -halfHeight {
            bottomConstraint.constant = -halfHeight
        } else {
            bottomConstraint.constant = -heightConstraint.constant
        }
        
        UIView.animate(withDuration: 1, delay: 0.0, usingSpringWithDamping: 0.3, initialSpringVelocity: 0.5, animations: {
                self.view.layoutIfNeeded()
            }
            , completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

