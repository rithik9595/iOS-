//
//  ViewController.swift
//  Task5App
//
//  Created by FCI on 25/11/24.
//


import UIKit

class ViewController: UIViewController {
    @IBOutlet var sv1 : UIScrollView!
    @IBOutlet var tv1 : UITextView!
    var sv2 : UIScrollView!
    var tv2 : UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        sv1.contentSize = CGSize(width: 550, height: 600)
        do {
            if let path = Bundle.main.path(forResource: "hyd", ofType: "txt") {
                // Specify the encoding, e.g., .utf8
                let str = try String(contentsOfFile: path, encoding: .utf8)
                tv1.text = str
            } else {
                print("File not found")
            }
        } catch {
            print("Error: \(error.localizedDescription)")
        }
    }
}

