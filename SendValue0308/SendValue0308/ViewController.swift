//
//  ViewController.swift
//  SendValue0308
//
//  Created by oui on 3/8/20.
//  Copyright © 2020 oui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var valueField: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //화면 전환 직전에 수행되는 작업들이 여기서 이루어진다.
        if let vc = segue.destination as? SecondViewController {
            /* 실제 형식으로 타입캐스팅 하는 방법.
               형식이 같기 때문에 guard let 사용하지 않아도 좋음.
             */
            vc.value = valueField.text
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}

