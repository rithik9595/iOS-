//
//  ViewController.swift
//  task2
//
//  Created by FCI on 25/11/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var image1: UIImageView!
    
    @IBOutlet var loadimg: UIActivityIndicatorView!
    var timer1: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        loadimg.startAnimating()
                timer1 = Timer.scheduledTimer(timeInterval: 5.0, target: self, selector: #selector(stopTimer1), userInfo: nil, repeats: false)
                
    }
    
    @objc func stopTimer1() {
        loadimg.stopAnimating()
        //loadimg.hidesWhenStopped = true
        self.view.backgroundColor = .orange
        image1.image = UIImage(named: "simba")
    }
    
}

