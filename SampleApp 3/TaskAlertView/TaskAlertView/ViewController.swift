//
//  ViewController.swift
//  TaskAlertView
//
//  Created by FCI on 27/11/24.
//

import UIKit
import WebKit
import SafariServices

class ViewController: UIViewController {
    
    
    @IBOutlet var txtfild: UITextField!
    
    @IBOutlet var btn1: UIButton!
    
    @IBOutlet var browseview: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func clickToWebsite(_ sender: UIButton) {
        
        
        let alert = UIAlertController(title: "Browse", message: "Select Any Option To Browse", preferredStyle: .alert)
        
        // Webkit Option
               alert.addAction(UIAlertAction(title: "Webkit", style: .default, handler: { _ in
                   if var browse = self.txtfild.text, !browse.isEmpty {
                       if var url1 = URL(string: browse) {
                           var req1 = URLRequest(url: url1)
                           self.browseview.load(req1)
                   }
                   }
               }))
        // Safari Option
               alert.addAction(UIAlertAction(title: "Safari", style: .default, handler: { _ in
                   if var browse = self.txtfild.text, !browse.isEmpty {
                       if var url1 = URL(string: browse) {
                           var safariVC = SFSafariViewController(url: url1)
                           self.present(safariVC, animated: true, completion: nil)
                       }
                   }
               }))
        // Cancel Option
               alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
               
               self.present(alert, animated: true, completion: nil)
           }
       }


