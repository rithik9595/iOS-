//
//  seconViewController.swift
//  NavigationControllert
//
//  Created by FCI on 26/11/24.
//

import UIKit

class seconViewController: UIViewController {
    
    
    @IBOutlet var popButton1: UIButton!
    
    @IBOutlet var dismissButton1: UIButton!
    @IBOutlet var popTOrootButton1: UIButton!
    @IBOutlet var pushButton2: UIButton!
    
    @IBOutlet var barbtn1: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func popButtonClick1(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func popTorootButtonClick1(_ sender: UIButton) {
        
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    
    
    @IBAction func disimissButtonClick1(_ sender: UIButton) {
        
        self.dismiss(animated: true)
    }
    
    
    @IBAction func pushButtonClick2(_ sender: UIButton) {
        
    }
    
    @IBAction func homebuttonClick(_ sender: UIBarButtonItem) {
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
