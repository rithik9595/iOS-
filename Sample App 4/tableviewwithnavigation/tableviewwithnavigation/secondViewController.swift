//
//  secondViewController.swift
//  tableviewwithnavigation
//
//  Created by FCI on 27/11/24.
//

import UIKit

class secondViewController: UIViewController {

    @IBOutlet var label1: UILabel!
    @IBOutlet var img: UIImageView!
    
    var string1: String!
    var image1: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        label1.text = string1
        img.image = image1
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
