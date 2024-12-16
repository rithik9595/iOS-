//
//  ViewController.swift
//  InvokingSafariPhoneSMS
//
//  Created by FCI on 28/11/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var label1: UIButton!
    @IBOutlet var txt1: UITextField!
    
    @IBOutlet var txt2: UITextField!
    @IBOutlet var label2: UIButton!
    
    @IBOutlet var txt3: UITextField!
    @IBOutlet var label3: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func click1(){
        if let url1 = URL(string: txt1.text!){
            UIApplication.shared.open(url1)
        }
    }
    
    @IBAction func click2(){
        if let url1 = URL(string: "TEL://\(txt2.text!)"){
            UIApplication.shared.open(url1)
        }
    }
    
    @IBAction func click3(){
        if let url1 = URL(string: "sms://\(txt3.text!)"){
            UIApplication.shared.open(url1)
        }
    }
           


}

