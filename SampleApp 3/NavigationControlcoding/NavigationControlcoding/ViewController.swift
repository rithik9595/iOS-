//
//  ViewController.swift
//  NavigationControlcoding
//
//  Created by FCI on 26/11/24.
//

import UIKit

class ViewController: UIViewController {
    
    var b1: UIButton!
    var b2: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = .yellow
        self.title = "First"
        
        b1 = UIButton()
        b1.frame = CGRect(x: 30, y: 240, width: 150, height: 30)
        b1.backgroundColor = .red
        b1.setTitle("PUSH", for: .normal)
        b1.addTarget(self, action: #selector(b1click), for: .touchUpInside)
        self.view.addSubview(b1)
        
        b2 = UIButton()
        b2.frame = CGRect(x: 30, y: 460, width: 150, height: 30)
        b2.backgroundColor = .red
        b2.setTitle("PRESENT", for: .normal)
        b2.addTarget(self, action: #selector(b2click), for: .touchUpInside)
        self.view.addSubview(b2)
        
        
    }
    
    @objc func b1click() {
        
        let next1 = secondViewController()
        self.navigationController?.pushViewController(next1, animated: true)
        
    }
    
    @objc func b2click() {
        
        let next2 = secondViewController()
        self.navigationController?.pushViewController(next2, animated: true)
    }


}

