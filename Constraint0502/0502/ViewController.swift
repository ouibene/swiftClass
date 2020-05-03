//
//  ViewController.swift
//  0502
//
//  Created by oui on 5/2/20.
//  Copyright © 2020 oui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

extension ViewController: UITableViewDataSource {
    /* 주로 데이터를 공급할 때 사용한다.
     delegate 프로토콜은 이벤트를 처리한다. */
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        /* 셀을 표시하기 직전*/
        
        //1
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        //2
        
        
        //3
        return cell
    }
    
    
}
