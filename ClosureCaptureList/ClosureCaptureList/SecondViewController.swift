//
//  SecondViewController.swift
//  ClosureCaptureList
//
//  Created by oui on 4/26/20.
//  Copyright © 2020 oui. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var a = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("aaa")
        DispatchQueue.main.asyncAfter(deadline: .now() + 10) { [weak self] in
            /* escaping closure */
            
            print("bbb")
            print(self?.a)
        }
    }
    
    deinit {
        print(#function, self)
    }
}
