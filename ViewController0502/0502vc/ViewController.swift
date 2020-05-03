//
//  ViewController.swift
//  0502vc
//
//  Created by oui on 5/2/20.
//  Copyright © 2020 oui. All rights reserved.
//

import UIKit

/* MVC
 Model-View-Controller
 View: Model에 저장되어있는 데이터를 시각적으로 보여주는 객체
 */
//ViewController - Controller


/* Application
 Not running: memory에 올라가있지 않고 cpu 점유하지 않는 상태
 
 - foreground -
 Inactive: 다른 앱이 전화 등의 이유로 중지될 때
 Active

 - backgroud(Background only) -
 Background: 홈 화면으로 갈 때
 
 Suspended: 메모리에는 존재하나, cpu는 사용하지 않는 상태

 UIApplicationDelegate
 시스템(iOS)에서 전역적으로 이벤트가 발생할 때 사용됨
 iOS 13 부터 SceneDelegate가 주로 사용됨 (UIWindowSceneDelegate)
 */

/*
 ViewController Life cycle
 1. Load : memory에 view가 올라갔을 때
 2. Appear : 화면에 view가 나타날 때
 3. Disappear
 4. Unload
 
 viewDidLoad: 주로 init code. lifecycle동안 단 한 번 수행된다. 
 viewWillAppear
 viewDidAppear
 viewWillDisappear
 viewDidDisappear
 deinit
 */

class ViewController: UIViewController {
    @IBOutlet weak var inputField: UITextField!

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if let vc = segue.destination as? SecondViewController {
            //vc.valueLabel?.text = inputField?.text
            vc.value = inputField.text
        } else if let mo = segue.destination as? ModalViewController {
            mo.modalStr = inputField.text
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
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
