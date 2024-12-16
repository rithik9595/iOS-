//
//  ViewController.swift
//  WebKitView
//
//  Created by FCI on 25/11/24.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet var view1: WKWebView!
    
    var url1: URL!
    var request1: URLRequest!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        url1 = URL(string: "https://www.apple.com")
        
        request1 = URLRequest(url: url1)
        
        view1.load(request1)
        
    }


}

