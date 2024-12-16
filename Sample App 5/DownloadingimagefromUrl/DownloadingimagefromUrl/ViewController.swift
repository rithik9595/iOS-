//
//  ViewController.swift
//  DownloadingimagefromUrl
//
//  Created by FCI on 28/11/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    
    
    @IBOutlet var img1: UIImageView!
    @IBOutlet var img2: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.UsingTheDatastructToDownloadImages()
        self.UsingTheSessionAPIToDownloadImages()
    }
    
    
    func UsingTheDatastructToDownloadImages(){
        
        let url = URL(string: "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg"
 )!
        
        
        DispatchQueue.global().async {
            
            //Fetch Image Data
            if let data = try? Data(contentsOf: url){
                
                //create Image And Update Image View
                print("\(data)")
                self.img1.image = UIImage(data: data)
            }
                
        }
        
    }
    
    
    func  UsingTheSessionAPIToDownloadImages(){
        //create url
        let url = URL(string: "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg"
 )!
        
        //let url
        
        //create data task
        let datatask = URLSession.shared.dataTask(with: url) { (data, _, _) in
            if let data1 = data{
                DispatchQueue.main.async {
                    //create image and update image view
                    self.img2.image = UIImage(data: data1)
                }
            }
            
        }
        //data task
        datatask.resume()
        
    }

    
    


}

