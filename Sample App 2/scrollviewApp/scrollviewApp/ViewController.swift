//
//  ViewController.swift
//  scrollviewApp
//
//  Created by FCI on 25/11/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var scrolvi: UIScrollView!
    
    @IBOutlet var lab1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        scrolvi.contentSize = CGSize(width: 550, height: 600)
        
        
        
    }


}

