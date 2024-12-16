//
//  ViewController.swift
//  SwitchApp
//
//  Created by FCI on 21/11/24.
//

import UIKit

class ViewController: UIViewController {
    
    var sw2:UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        sw2 = UISwitch()
        
        sw2.frame = CGRect(x: 100, y: 450, width: 100, height: 50)
        
        sw2.isOn = false
        sw2.onTintColor = .green
        sw2.thumbTintColor = .blue
        
        sw2.addTarget(self, action: #selector(switchClick3), for: .valueChanged)
        
        self.view.addSubview(sw2)
//         switchClick1()
        switchClick3()
    }

    @IBOutlet weak var sw1: UISwitch!
    
    @IBAction func switchClick1() {
        
        if sw1.isOn{
            self.view.backgroundColor = .white
            print("switch is On")
        }
        else{
            self.view.backgroundColor = .white
            print("switch is Off")
        }
    }
    

    
    @objc func switchClick3(){
        
        if sw2.isOn{
            self.view.backgroundColor = .purple
            print("switch is On")
        }
        else{
            self.view.backgroundColor = .orange
            print("switch is Off")
        }
   
    }
    
    
}


