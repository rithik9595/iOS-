//
//  secondViewController.swift
//  NavigationControlcoding
//
//  Created by FCI on 26/11/24.
//

import UIKit

class secondViewController: UIViewController {
    
    var b3: UIButton!
    var b4: UIButton!
    var homeButton: UIBarButtonItem!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = .blue
        self.title = "second"
        
        b3 = UIButton()
        b3.frame = CGRect(x: 30, y: 240, width: 150, height: 30)
        b3.backgroundColor = .green
        b3.setTitle("POP", for: .normal)
        b3.addTarget(self, action: #selector(b3click), for: .touchUpInside)
        self.view.addSubview(b3)
        
        b4 = UIButton()
        b4.frame = CGRect(x: 30, y: 340, width: 150, height: 30)
        b4.backgroundColor = .green
        b4.setTitle("DISMISS", for: .normal)
        b4.addTarget(self, action: #selector(b4click), for: .touchUpInside)
        self.view.addSubview(b4)
        
        homeButton = UIBarButtonItem(image: UIImage(systemName: "homekit"), style: .plain, target: self, action: #selector(homeButtonClick))
        
        self.navigationItem.rightBarButtonItem = homeButton
    }
    
    
    @objc func b3click() {
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
    @objc func b4click() {
        
        self.navigationController?.dismiss(animated: true)
    }
    
    @objc func homeButtonClick()  {
        
        self.navigationController?.popViewController(animated: true)
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
