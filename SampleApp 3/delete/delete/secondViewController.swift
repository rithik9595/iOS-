//
//  secondViewController.swift
//  delete
//
//  Created by FCI on 27/11/24.
//

import UIKit

class secondViewController: UIViewController {

    @IBOutlet var pop1: UIButton!
    
    @IBOutlet var present3: UIButton!
    
    @IBOutlet var push3: UIButton!
    
    @IBOutlet var dismiss2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func clickPop1(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func clickPush3(_ sender: UIButton) {
    }
    
    
    @IBAction func clickPresent3(_ sender: UIButton) {
    }
    
    @IBAction func clickDismiss2(_ sender: UIButton) {
        
        self.dismiss(animated: true)
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
