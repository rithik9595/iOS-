//
//  ViewController.swift
//  Task1
//
//  Created by FCI on 24/11/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var img: UIImageView!
    
    @IBOutlet var cntrl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    
    
    @IBAction func clickNextimage(_ sender: UIPageControl) {
        
        if sender.currentPage == 0{
            self.view.backgroundColor = UIColor.red
            img.image = UIImage(named: "flower1")
        }
        else if sender.currentPage == 1{
            self.view.backgroundColor = UIColor.yellow
            img.image = UIImage(named: "flower2")
        }
        else if sender.currentPage == 2{
            self.view.backgroundColor = UIColor.blue
            img.image = UIImage(named: "flower3")
        }
        else if sender.currentPage == 3{
            self.view.backgroundColor = UIColor.brown
            img.image = UIImage(named: "flower4")
        }
        else if sender.currentPage == 4{
            self.view.backgroundColor = UIColor.green
            img.image = UIImage(named: "flower5")
        }
    }

}

