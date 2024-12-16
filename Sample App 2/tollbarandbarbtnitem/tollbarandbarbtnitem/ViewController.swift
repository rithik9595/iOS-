//
//  ViewController.swift
//  tollbarandbarbtnitem
//
//  Created by FCI on 25/11/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tolbar1: UIToolbar!
    @IBOutlet var barbtn1: UIBarButtonItem!
    @IBOutlet var barbtn2: UIBarButtonItem!
    @IBOutlet var barbtn3: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    @IBAction func barbtnclk1() {
        
        self.view.backgroundColor = .blue
    }
    @IBAction func barbtnclk2() {
        
        self.view.backgroundColor = .yellow
    }
    @IBAction func barbtnclk3() {
        
        self.view.backgroundColor = .green
    }


}

