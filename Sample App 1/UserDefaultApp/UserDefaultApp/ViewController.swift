//
//  ViewController.swift
//  UserDefaultApp
//
//  Created by FCI on 22/11/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var tx1: UITextField!
    @IBOutlet var tx2: UITextField!
    @IBOutlet var bt1: UIButton!
    
    var defaults1: UserDefaults!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       defaults1 = UserDefaults.standard
        
       tx1.text = defaults1.string(forKey: "username")
       tx2.text = defaults1.string(forKey: "userpassword")
        
       print("\(String(describing: tx1.text!))\(String(String(describing: tx2.text!)))")
        
    }
    
    /*(@IBAction func saveButtonClick() {
        
        defaults1 = UserDefaults.standard
        defaults1.set(tx1.text, forKey: "username")
        defaults1.set(tx2.text, forKey: "userpassword")
        defaults1.synchronize()
    }*/


}

