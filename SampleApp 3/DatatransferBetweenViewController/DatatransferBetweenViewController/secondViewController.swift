//
//  secondViewController.swift
//  DatatransferBetweenViewController
//
//  Created by FCI on 26/11/24.
//

import UIKit

class secondViewController: UIViewController {

    
    @IBOutlet var display: UILabel!
    
    @IBOutlet var imgdis: UIImageView!
    
    var name: String!
    var imagename: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        display.text = name
        imgdis.image = UIImage(named: imagename)
    
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
