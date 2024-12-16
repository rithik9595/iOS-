//
//  ViewController.swift
//  CoreAnimation
//
//  Created by FCI on 28/11/24.
//

import UIKit
import QuartzCore

class ViewController: UIViewController {

    
    @IBOutlet var label1: UILabel!
    @IBOutlet var txt: UITextField!
    @IBOutlet var btn1: UIButton!
    
    var label1Layer: CALayer!
    var textFieldLayer: CALayer!
    var imageViewLayer: CALayer!
    var screenViewLayer: CALayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        //label
        label1Layer = label1.layer
        label1Layer.cornerRadius = 30
        label1Layer.borderColor = UIColor.black.cgColor
        label1Layer.borderWidth = 6
        
        label1Layer.backgroundColor = UIColor.red.cgColor
        
        
        //text
        textFieldLayer = txt.layer
        textFieldLayer.cornerRadius = 13
        textFieldLayer.borderColor = UIColor.black.cgColor
        textFieldLayer.borderWidth = 2
        
        textFieldLayer.backgroundColor = UIColor.yellow.cgColor
        
        
        
        //img
        imageViewLayer = txt.layer
        imageViewLayer.cornerRadius = 7
        imageViewLayer.borderColor = UIColor.black.cgColor
        imageViewLayer.borderWidth = 2
        
        imageViewLayer.backgroundColor = UIColor.green.cgColor
        
        
        
        //img
        screenViewLayer = self.view.layer
        screenViewLayer.cornerRadius = 7
        screenViewLayer.borderColor = UIColor.black.cgColor
        screenViewLayer.borderWidth = 2
        
       //  screenViewLayer.backgroundColor = UIColor.orange.cgColor
        
        
        
        
    }
    
    
    
    
}

