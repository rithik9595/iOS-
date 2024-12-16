//
//  ViewController.swift
//  SharingTextImageAndURLUsingUIActivityViewControllerApp
//
//  Created by Naga Murali Akula on 04/08/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var b1: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func shareClick() {
        
        let text = "Sharing Details"
        let image = UIImage(named: "Ball.png")
        let myWebsite = URL(string:"https://www.apple.com")
        
        let shareAll = [text, image!, myWebsite!] as [Any]
        
        print(shareAll)
        
        let activityViewController = UIActivityViewController(activityItems: shareAll, applicationActivities: nil)
        
        activityViewController.popoverPresentationController?.sourceView = self.view
           
        self.present(activityViewController, animated: true)
        
    }

}

