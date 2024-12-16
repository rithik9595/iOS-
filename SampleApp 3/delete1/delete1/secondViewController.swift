//
//  secondViewController.swift
//  delete1
//
//  Created by FCI on 27/11/24.
//

import UIKit

class secondViewController: UIViewController {
    
    
    @IBOutlet var display: UILabel!
    
    var name: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        display.text = name
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
