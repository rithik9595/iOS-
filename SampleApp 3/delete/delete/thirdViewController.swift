//
//  thirdViewController.swift
//  delete
//
//  Created by FCI on 27/11/24.
//

import UIKit

class thirdViewController: UIViewController {
    
    
    @IBOutlet var pop2: UIButton!
    
    @IBOutlet var poptoroot1: UIButton!
    
    @IBOutlet var dismiss3: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func clickPop2(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func clickPopToroot1(_ sender: UIButton) {
        
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func clickDismiss3(_ sender: UIButton) {
        
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
