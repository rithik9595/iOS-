//
//  ViewController.swift
//  Prac3
//
//  Created by FCI on 24/11/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var control: UISegmentedControl!
    
    @IBOutlet var control2: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func colourChange(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0 {
            self.view.backgroundColor = UIColor.red
        }
        else {
            self.view.backgroundColor = UIColor.yellow
        }
        
    }
    
    @IBAction func colourChange2(_ sender: UISwitch) {
        if sender.isOn {
            self.view.backgroundColor = UIColor.red
        }
        else {
            self.view.backgroundColor = UIColor.yellow
        }
    }
    @IBAction func colourChange3(_ sender: UIPageControl) {
        if sender.currentPage == 0 {
            self.view.backgroundColor = UIColor.blue
        }
        else if sender.currentPage == 1 {
            self.view.backgroundColor = UIColor.red
        }
        else {
            self.view.backgroundColor = UIColor.green
        }
    }
    
}
