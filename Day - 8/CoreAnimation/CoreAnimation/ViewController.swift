//
//  ViewController.swift
//  CoreAnimation
//
//  Created by Naga Murali Akula on 28/11/24.
//

import UIKit
import QuartzCore

class ViewController: UIViewController {
    
    @IBOutlet var label1: UILabel!
    @IBOutlet var tf1: UITextField!
    @IBOutlet var iv1: UIImageView!
    
    var labelLayer: CALayer!
    var textFieldLayer: CALayer!
    var imageViewLayer: CALayer!
    var screenViewLayer: CALayer!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // label layer
        
        labelLayer = label1.layer
        labelLayer.borderColor  = UIColor.black.cgColor
        labelLayer.borderWidth = 6
        labelLayer.cornerRadius = 55
        
        labelLayer.backgroundColor = UIColor.yellow.cgColor
        
        //textfield field layer
        
        textFieldLayer = tf1.layer
        textFieldLayer.borderColor  = UIColor.white.cgColor
        textFieldLayer.borderWidth = 2
        textFieldLayer.cornerRadius = 13
        
        textFieldLayer.backgroundColor = UIColor.red.cgColor
        
        
        //imageView  layer
        
        imageViewLayer = iv1.layer
        imageViewLayer.borderColor  = UIColor.black.cgColor
        imageViewLayer.borderWidth = 5
        imageViewLayer.cornerRadius = 15
        imageViewLayer.shadowRadius = 100
        imageViewLayer.shadowColor = UIColor.black.cgColor
        
        // screen layer
        
        screenViewLayer = self.view.layer
        screenViewLayer.borderColor  = UIColor.orange.cgColor
        screenViewLayer.borderWidth = 10
        screenViewLayer.cornerRadius = 50
        
        
       
    }


}

