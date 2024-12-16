//
//  ViewController.swift
//  DowloadingImageFromURL
//
//  Created by Naga Murali Akula on 15/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label1: UILabel!
    @IBOutlet var iv1: UIImageView!
    
    @IBOutlet var label2: UILabel!
    @IBOutlet var iv2: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.UsingTheDataStructToDownloadImages()
        
        self.UsingTheURLSessionAPIToDownloadImages()
    }

    
    func UsingTheDataStructToDownloadImages() {
        
        // Create URL
           let url = URL(string: "https://cdn.cocoacasts.com/cc00ceb0c6bff0d536f25454d50223875d5c79f1/above-the-clouds.jpg")!

        DispatchQueue.global().async {
            // Fetch Image Data
            if let data = try? Data(contentsOf: url) {
                DispatchQueue.main.async {
                    // Create Image and Update Image View
                    print("\(data)")
                    self.iv1.image = UIImage(data: data)
                }
            }
        }
        
    }
    
    func UsingTheURLSessionAPIToDownloadImages() {
        
        // Create URL
            let url = URL(string: "https://cdn.cocoacasts.com/cc00ceb0c6bff0d536f25454d50223875d5c79f1/above-the-clouds.jpg")!
        
       // let url = URL(string: "https://cdn.cocoacasts.com/3cbae1d5e178606580518a81da69e5af30a7bb5b/image-0.jpg")!

            // Create Data Task
            let dataTask = URLSession.shared.dataTask(with: url) { (data, _, _) in
                if let data1 = data {
                    DispatchQueue.main.async {
                        // Create Image and Update Image View
                        print(data1)
                        self.iv2.image = UIImage(data: data1)
                    }
                }
            }

            // Start Data Task
            dataTask.resume()
    }

}

