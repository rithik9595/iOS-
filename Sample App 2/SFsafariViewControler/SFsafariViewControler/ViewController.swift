//
//  ViewController.swift
//  SFsafariViewControler
//
//  Created by FCI on 25/11/24.
//

import UIKit
import SafariServices

class ViewController: UIViewController {

    @IBOutlet var btn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnPressWeb() {
        
        guard let appurl = URL(string: "https://www.apple.com")
        else {
            return
        }
        
        let safariVC = SFSafariViewController(url: appurl)
        present(safariVC, animated: true, completion: nil)
    }
    


}

