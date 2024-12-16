//
//  SecondViewController.swift
//  NavigationControllerCoding
//
//  Created by shamitha on 26/11/24.
//

import UIKit

class SecondViewController: UIViewController {
    
    var b3: UIButton!
    var b4: UIButton!
    
    var homeButton1: UIBarButtonItem!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .brown
        self.title = "Second"
        
        b3=UIButton()
        b3.frame = CGRect(x: 30, y: 360, width: 150, height: 30)
        b3.backgroundColor = .red
        b3.setTitle("POP", for: .normal)
        b3.addTarget(self, action: #selector(b3Click), for: .touchUpInside)
        self.view.addSubview(b3)
        
        self.view.backgroundColor = .blue
        self.title = "FIRST"
        
       /* b1=UIButton()
        b1.frame = CGRect(x: 30, y: 360, width: 150, height: 30)
        b1.backgroundColor = .red
        b1.setTitle("PUSH", for: .normal)
        b1.addTarget(self, action: #selector(b1Click), for: .touchUpInside)
        self.view.addSubview(b1)*/
        
        b4=UIButton()
        b4.frame = CGRect(x: 30, y: 460, width: 150, height: 30)
        b4.backgroundColor = .red
        b4.setTitle("Dismiss", for: .normal)
        b4.addTarget(self, action: #selector(b4Click), for: .touchUpInside)
        self.view.addSubview(b4)

    }
    @objc func b3Click(){
        
        
    }

    @objc func b4Click(){
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
