//
//  ViewController.swift
//  Member0215
//
//  Created by oui on 2/15/20.
//  Copyright © 2020 oui. All rights reserved.
//

import UIKit

struct Person  {
    //Properties
    let name: String
    let age: Int
}

class ViewController: UIViewController {

    //var list = [String]()
    //var list = [Person]() //for dummy
    
    @IBOutlet weak var listTableView: UITableView!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var ageField: UITextField!
    
    @IBAction func orderTypeChanged(_ sender: UISegmentedControl) {
        
        var shouldReload = false
        
        switch sender.selectedSegmentIndex {
        case 1:
            list.sort { $0.age < $1.age}
            shouldReload = true
        case 0:
            list.sort { $0.name < $1.name}
            shouldReload = true
        default:
            break;
        }

        if shouldReload {
           listTableView.reloadData()
        }
        
        /*
        if sender.selectedSegmentIndex == 0 {
            /*
            list.sort (by : { (p1: Person, p2: Person) -> Bool in
                return p1.name > p2.name
            })
            */
            list.sort { $0.name < $1.name}

        } else {
            /*
            list.sort (by : { (p1: Person, p2: Person) -> Bool in
                return p1.age < p2.age
            })
            */
            list.sort { $0.age < $1.age}
        }
                listTableView.reloadData()
        */
    }
    
    
    @IBAction func addPerson(_ sender: Any) {
        guard let name = nameField.text else {
            //alert
            return
        }
        
        guard let ageStr = ageField.text, let age = Int(ageStr) else {
             //alert
             return
         }
        
        //list.insert(name, at: 0)
        //list.insert("\(name) \(age)", at: 0)
        let newPerson = Person(name: name, age: age)
        list.insert(newPerson, at: 0)
        
        //print(list)
        listTableView.reloadData()
    }

    var list = [
        Person(name: "김뭐뭐", age: Int.random(in: 10...100)),
        Person(name: "이뭐뭐", age: Int.random(in: 10...100)),
        Person(name: "박뭐뭐", age: Int.random(in: 10...100)),
        Person(name: "정뭐뭐", age: Int.random(in: 10...100)),
        Person(name: "황뭐뭐", age: Int.random(in: 10...100))
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        //cell.textLabel?.text = list[indexPath.row]
        cell.textLabel?.text = list[indexPath.row].name
        cell.detailTextLabel?.text = "\(list[indexPath.row].age)"

        return cell
    }
}
