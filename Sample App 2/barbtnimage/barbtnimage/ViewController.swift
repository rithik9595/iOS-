//
//  ViewController.swift
//  barbtnimage
//
//  Created by FCI on 26/11/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var bait1: UIBarButtonItem!
    
    @IBOutlet var bar1: UIToolbar!
    
    @IBOutlet var img: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func bar1click(_ sender: UIBarButtonItem) {
        self.view.backgroundColor = .red
        
        img.image = UIImage(named: "file")
    }
    
}

