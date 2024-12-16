//
//  ViewController.swift
//  UintAndUITesting
//
//  Created by FCI on 04/12/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func isStringLong(mystring: String) -> Bool {
        return mystring.count > 5
    }
    
    func isAddingTwoNumbers() -> Int {
        
        let x = 15
        let y = 5
        
        let z = x+y
        return z
    }
    
    func comparingTwoString() -> Bool {
        
        let pass = "heloworld"
        let repeatpass = "heloworld"
        
        if pass == repeatpass {
            return true
        }else {
            return false
        }
    }

}

