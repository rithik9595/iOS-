//
//  thirdViewController.swift
//  NavigationControllert
//
//  Created by FCI on 26/11/24.
//

import UIKit

class thirdViewController: UIViewController {
    @IBOutlet var popButton2: UIButton!
    
    @IBOutlet var popTorootButton2: UIButton!
    
    @IBOutlet var barbtn2: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func popButtonClick2(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func popTorootButtonClick2(_ sender: UIButton) {
        
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func homebuttonClick1(_ sender: UIBarButtonItem) {
        
        self.navigationController?.popToRootViewController(animated: true)
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
