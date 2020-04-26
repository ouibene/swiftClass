//
//  ViewController.swift
//  Date0215
//
//  Created by oui on 2/15/20.
//  Copyright © 2020 oui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func dateChanged(_ sender: UIDatePicker) {
        let selectedDate = sender.date //선택한 데이터를 가지고 온다.
        let calendar = Calendar.current //시스템에 설정된 날짜를 가지고 온다.
        if let date = calendar.date(byAdding: .day, value: 100, to: selectedDate) {
            let formatter = DateFormatter()
            formatter.dateStyle = .long
            formatter.timeStyle = .none
            resultLabel.text = formatter.string(from: date)
        }
    }
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

