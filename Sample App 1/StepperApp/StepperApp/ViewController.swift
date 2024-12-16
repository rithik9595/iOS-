//
//  ViewController.swift
//  StepperApp
//
//  Created by FCI on 22/11/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var stp: UIStepper!
    @IBOutlet var lb1:UILabel!
    
    var stp1: UIStepper!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.displayStepper()
    }
    
    @IBAction func stepper1Click() {
        
        let i: Double = stp.value
        lb1.text = Int(i).description
    }
    
    func displayStepper() {
        
        stp1 = UIStepper()
        
        stp1.frame = CGRect(x: 40, y: 400, width: 180, height: 40)
        
        stp1.value = 0
        stp1.minimumValue = 0
        stp1.maximumValue = 5
        stp1.stepValue = 1
        stp1.isContinuous = true
        stp1.autorepeat = true
        stp1.wraps = true
        stp1.backgroundColor = .cyan
        stp1.tintColor = .blue
        
        
        stp1.addTarget(self, action: #selector(s2Click), for: .valueChanged)
        
        self.view.addSubview(stp1)
    }
    @objc func s2Click() {
        
        let i: Double = stp.value
        lb1.text = Int(i).description
        
    }


}

