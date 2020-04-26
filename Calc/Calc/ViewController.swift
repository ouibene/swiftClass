//
//  ViewController.swift
//  Calc
//
//  Created by oui on 1/5/20.
//  Copyright © 2020 oui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftField: UITextField!
    @IBOutlet weak var rightField: UITextField!
    @IBOutlet weak var btn: UIButton!
    
    //argument label - parameter name - parameter type
    @IBAction func process(_ sender: Any) {
 
        //let leftStr = leftField.text!
        //let rightStr = rightField.text!
        guard let leftStr = leftField.text, let rightStr = rightField.text else {
            //alert
            show(message: "올바른 값을 입력해주세요")
            return
        }
        
        //Type conversion
        //let leftNum = Int(leftStr)!
        //let rightNum = Int(rightStr)!
        guard let leftNum = Int(leftStr), let rightNum = Int(rightStr) else {
            //alert
            show(message: "올바른 값을 입력해주세요")
            return
        }
        
        show(message: "\(leftNum) + \(rightNum) = \(leftNum+rightNum)", title: "결과")
    }
    
    func show(message: String, title: String = "경고") {
        //Alert
        //let msg = "\(leftNum) + \(rightNum) = \(leftNum + rightNum)"
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: title, style: .default, handler: { (action: UIAlertAction) -> Void in print ("확인")})
        
        alert.addAction(okAction)
        present(alert, animated: true, completion: {print("completion")})
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        leftField.becomeFirstResponder() // <-> resignFirstResponder()
    }

}
