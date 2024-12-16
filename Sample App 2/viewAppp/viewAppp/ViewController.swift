//
//  ViewController.swift
//  viewAppp
//
//  Created by FCI on 26/11/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var select: UISegmentedControl!
    
    @IBOutlet var view1: UIView!
    @IBOutlet var view2: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view1.isHidden = true
        view2.isHidden = true
    }


    @IBAction func viewSelect(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0 {
            view1.isHidden = false
            view2.isHidden = true
            self.view.backgroundColor = .red
        }
        if sender.selectedSegmentIndex == 1 {
            view1.isHidden = true
            view2.isHidden = false
            self.view.backgroundColor = .yellow
        }
    }
}

