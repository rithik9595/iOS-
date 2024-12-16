//
//  ViewController.swift
//  delete1
//
//  Created by FCI on 27/11/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var enter: UITextField!
    
    @IBOutlet var clickbtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ClickDisplay(_ sender: UIButton) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextscreen = segue.destination as! secondViewController
        
        nextscreen.name = enter.text
    }
    
}

