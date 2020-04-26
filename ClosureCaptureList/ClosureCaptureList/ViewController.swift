//
//  ViewController.swift
//  ClosureCaptureList
//
//  Created by oui on 4/26/20.
//  Copyright © 2020 oui. All rights reserved.
//

import UIKit

class Car {
    var totalDrivingDistance = 0.0
    var totalUsedGas = 0.0
    
    /*
    lazy var gasMileage: () -> Double = { [weak self] in
        guard let strongSelf = self else { return 0.0 }
        return strongSelf.totalDrivingDistance / strongSelf.totalUsedGas
    }
    */
    
    lazy var gasMileage: () -> Double = { [unowned self] in
        // 그래도 주로 weak self 를 쓴다.
        // unowned는 속성이 사라졌을 때 crash 발생의 위험이 더 높기 때문이다.
        return self.totalDrivingDistance / self.totalUsedGas
    }
    
    func drive() {
        self.totalDrivingDistance = 1200.0
        self.totalUsedGas = 73.0
    }
    
    deinit {
        print("car deinit")
    }
}


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        let car = Car()
        car.drive()
        car.gasMileage()
    }


}

