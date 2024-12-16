//
//  ViewController.swift
//  DownloadingImagesUsingDispatchQueue
//
//  Created by FCI on 04/12/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var iv1: UIImageView!
    @IBOutlet var iv2: UIImageView!
    @IBOutlet var iv3: UIImageView!
    
    @IBOutlet var act1: UIActivityIndicatorView!
    @IBOutlet var act2: UIActivityIndicatorView!
    @IBOutlet var act3: UIActivityIndicatorView!
    
    @IBOutlet var serial: UIButton!
    @IBOutlet var concurrent: UIButton!
    
    
    // MARK: -
    
    private let serialDispatchQueue = DispatchQueue(label: "serial-dispatch-queue")
    private let concurrentDispatchQueue = DispatchQueue(label: "concurrent-dispatch-queue", attributes: .concurrent)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func clickSerial(_ sender: UIButton) {
        
        download(using: serialDispatchQueue)
        
    }
    
    
    
    
    @IBAction func clickConcurrent(_ sender: UIButton) {
        
        download(using: concurrentDispatchQueue)
        
    }
    
    private func download(using dispatchQueue: DispatchQueue) {
        // Reset Image Views
        iv1.image = nil
        iv2.image = nil
        iv3.image = nil
        
        // Define URLs
        let url0 = URL(string: "https://cdn.cocoacasts.com/3cbae1d5e178606580518a81da69e5af30a7bb5b/image-0.jpg")
        let url1 = URL(string: "https://cdn.cocoacasts.com/3cbae1d5e178606580518a81da69e5af30a7bb5b/image-1.jpg")
        let url2 = URL(string: "https://cdn.cocoacasts.com/3cbae1d5e178606580518a81da69e5af30a7bb5b/image-2.jpg")
        
        // Show Activity Indicator Views
        act1.startAnimating()
        act2.startAnimating()
        act3.startAnimating()
        
        dispatchQueue.async { [weak self] in
            guard let url = url0 else { return }
            guard let data = try? Data(contentsOf: url) else { return }
            
            let image = UIImage(data: data)
            
            DispatchQueue.main.async {
                self?.iv1.image = image
                self?.act1.stopAnimating()
                self?.act1.isHidden = true
            }
        }
        
        dispatchQueue.async { [weak self] in
            guard let url = url1 else { return }
            guard let data = try? Data(contentsOf: url) else { return }
            
            let image = UIImage(data: data)
            
            DispatchQueue.main.async {
                self?.iv2.image = image
                self?.act2.stopAnimating()
                self?.act2.isHidden = true
            }
        }
        
        dispatchQueue.async { [weak self] in
            guard let url = url2 else { return }
            guard let data = try? Data(contentsOf: url) else { return }
            
            let image = UIImage(data: data)
            
            DispatchQueue.main.async {
                self?.iv3.image = image
                self?.act3.stopAnimating()
                self?.act3.isHidden = true
            }
        }
        
        
        
        
    }
    
}
