//
//  ViewController.swift
//  ErrorHandling
//
//  Created by oui on 4/26/20.
//  Copyright © 2020 oui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        defer {
            /* closure
             method 의 scope 가 종료되는 시점까지 연기하는 코드
             scope 가 끝나기 전에는 무조건 실행된다. return 되기 직전 호출됨.
             호출이 되어야지만 한 번 예약을 해야한다.
             그래서 예약될 수 있도록 주로 맨 앞에 온다.
             가장 마지막에 예약된 것 부터 호출된다.
             stack 으로 관리한다.
             */
            print(1)
        }
        
        print(2)
        
        let d = Data(capacity: 1024)
        let url = URL(string: "https://www.apple.com")!
        
        /*
        do {
            /* throws 가 붙은 메서드는 do-catch 문을 사용해서
            반드시 do block 안에서 호출하도록 한다. */
            let d2 = try Data(contentsOf: url)
        } catch {
            /* error 가 생성된다
             alert message 띄우도록 한다. */
            print(error)
        }
         */
        
        do {
            let html = try String(contentsOf: url)
            print(html)
        } catch {
            print(error)
        }
        /* optional try */
        let html2 = try? String(contentsOf: url)
 
        print(3)
    }

}
