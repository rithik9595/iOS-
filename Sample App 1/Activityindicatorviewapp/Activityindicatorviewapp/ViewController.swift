//
//  ViewController.swift
//  Activityindicatorviewapp
//
//  Created by FCI on 22/11/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var ind1: UIActivityIndicatorView!
    var timer1: Timer!
    
    var ind2: UIActivityIndicatorView!
    var timer2: Timer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        ind1.startAnimating()
        timer1 = Timer.scheduledTimer(timeInterval: 5.0, target: self, selector: #selector(stopTimer1), userInfo: nil, repeats: false)
        
        
        self.displayActivityIndicatorView()
        
        
    }
    
    @objc func stopTimer1() {
        ind1.stopAnimating()
        ind1.hidesWhenStopped = true
        self.view.backgroundColor = .orange
    }
    
    func displayActivityIndicatorView() {
        
        ind2 = UIActivityIndicatorView()
        
        ind2.frame = CGRect(x: 30, y: 500, width: 50, height: 50)
        ind2.style = .large
        ind2.color = .purple
        ind2.startAnimating()
        
        self.view.addSubview(ind2)
        
        timer2 = Timer.scheduledTimer(timeInterval: 5.0, target: self, selector: #selector(stopTimer2), userInfo: nil, repeats: false)
        
        
    }
    
    @objc func stopTimer2() {
        
        ind2.stopAnimating()
        ind2.hidesWhenStopped = true
        self.view.backgroundColor = .green
        
    }


}

