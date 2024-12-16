//
//  ViewController.swift
//  DatatransferBetweenViewController
//
//  Created by FCI on 26/11/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var txtbar: UITextField!
    
    @IBOutlet var clickbtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func b1Click(_ sender: UIButton) {
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        
        let nextScreen = segue.destination as! secondViewController
        
        nextScreen.name = txtbar.text
        nextScreen.imagename = "imgbal.png"
        
    }
}

