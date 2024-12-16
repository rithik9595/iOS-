//
//  ViewController.swift
//  ProgressViewApp
//
//  Created by FCI on 25/11/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var prog: UIProgressView!
    var timer1: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        timer1 = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(stopprog), userInfo: nil, repeats: true)
        
        
    }
    
    @objc  func stopprog() {
        
        prog.progress += 0.1
        
        if prog.progress == 1.0 {
            prog.isHidden = true
            self.view.backgroundColor = .yellow
        }
        
    }
    
    


}

