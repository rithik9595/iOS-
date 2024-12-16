//
//  ViewController.swift
//  pracdele
//
//  Created by FCI on 26/11/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var display: UIImageView!
    @IBOutlet var prog: UIProgressView!
    var timer1: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer1 = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(stopProg), userInfo: nil, repeats: true)
    }
    
    @objc func stopProg() {
        prog.progress += 0.1
        
        if prog.progress >= 1 {
            prog.isHidden = true
            self.view.backgroundColor = .yellow
            display.image = UIImage(named: "car.png")
            timer1.invalidate()
        }
    }
}
