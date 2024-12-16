//
//  ViewController.swift
//  InvokingSafariPhoneSMS
//
//  Created by Naga Murali Akula on 17/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var tf1: UITextField!
    @IBOutlet var tf2: UITextField!
    @IBOutlet var tf3: UITextField!
    
    @IBOutlet var b1: UIButton!
    @IBOutlet var b2: UIButton!
    @IBOutlet var b3: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func click1() {
        
        if let url1 = URL(string: tf1.text!) {
            UIApplication.shared.open(url1)
        }
        
    }
    @IBAction func click2() {
        
        if let url1 = URL(string: "TEL://\(tf2.text!)") {
            UIApplication.shared.open(url1)
        }
        
    }

    @IBAction func click3() {
        
        if let url1 = URL(string: "sms://\(tf3.text!)") {
            UIApplication.shared.open(url1)
        }
    }



}

