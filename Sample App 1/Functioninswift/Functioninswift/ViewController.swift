//
//  ViewController.swift
//  Functioninswift
//
//  Created by FCI on 21/11/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.click1()
    }
    
    
    
    // function
    
    func click1() {
        
        print("hello world")
        self.click2(value1: 100)
        
    }
    
    func click2(value1: Int) {
        print("\(value1)")
        self.click3(value2:"Methods",value3:4.0)
    }
    
    func click3(value2: String, value3: Float) {
        print("\(value2),\(value3)")
    }


}

