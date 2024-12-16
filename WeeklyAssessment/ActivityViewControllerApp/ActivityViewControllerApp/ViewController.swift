//
//  ViewController.swift
//  ActivityViewControllerApp
//
//  Created by FCI on 30/11/24.
//

import UIKit
import QuartzCore

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    //requried objects
    @IBOutlet var urlname: UITextField!
    @IBOutlet var site: UITextField!
    
    @IBOutlet var display: UIImageView!
    @IBOutlet var displaybtn: UIButton!
    
    @IBOutlet var sharebtn: UIButton!
    
    var PhotoLibraryImagePicker1: UIImagePickerController!
    var cameraImagePicker2: UIImagePickerController!
    
    var textFieldLayer1: CALayer!
    var textFieldLayer2: CALayer!
    var imageViewLayer: CALayer!
    var displaybtnViewLayer: CALayer!
    var sharebtnViewLayer: CALayer!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // TextField core animation
        textFieldLayer1 = urlname.layer
        textFieldLayer1.cornerRadius = 10
        textFieldLayer1.borderColor = UIColor.systemGray4.cgColor
        textFieldLayer1.borderWidth = 2
        
        textFieldLayer1.backgroundColor = UIColor.white.cgColor
        
        textFieldLayer2 = site.layer
        textFieldLayer2.cornerRadius = 10
        textFieldLayer2.borderColor = UIColor.systemGray4.cgColor
        textFieldLayer2.borderWidth = 2
        
        textFieldLayer2.backgroundColor = UIColor.white.cgColor
        
        // img core animation
        imageViewLayer = display.layer
        imageViewLayer.cornerRadius = 15
        imageViewLayer.borderColor = UIColor.white.cgColor
        imageViewLayer.borderWidth = 2
        
        imageViewLayer.backgroundColor = UIColor.clear.cgColor
        
        // button core animation
        displaybtnViewLayer = displaybtn.layer
        displaybtnViewLayer.cornerRadius = 12
        displaybtnViewLayer.borderColor = UIColor.systemBlue.cgColor
        displaybtnViewLayer.borderWidth = 1.5
        
        displaybtnViewLayer.backgroundColor = UIColor.white.cgColor
        
        
        sharebtnViewLayer = sharebtn.layer
        sharebtnViewLayer.cornerRadius = 12
        sharebtnViewLayer.borderColor = UIColor.systemGreen.cgColor
        sharebtnViewLayer.borderWidth = 1.5
        
        sharebtnViewLayer.backgroundColor = UIColor.white.cgColor


    }

    
    @IBAction func selectImage(_ sender: UIButton) {
        
        
        let alert = UIAlertController(title: "Choose Image Source", message: "Select an option to pick an image.", preferredStyle: .actionSheet)
        
        
        alert.addAction(UIAlertAction(title: "Photo Library", style: .default, handler: { (_) in
            //Photo Library Option
            self.PhotoLibraryImagePicker1 = UIImagePickerController()
            self.PhotoLibraryImagePicker1.sourceType = .photoLibrary
            self.PhotoLibraryImagePicker1.allowsEditing = false
            self.PhotoLibraryImagePicker1.delegate = self

            self.present(self.PhotoLibraryImagePicker1, animated: true)

        }))
        
        
        

        alert.addAction(UIAlertAction(title: "Camera", style: .default, handler: { (_) in
            //Camera Option
            if(UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.camera))
            {
                self.cameraImagePicker2 = UIImagePickerController()
                self.cameraImagePicker2.sourceType = .camera
                self.cameraImagePicker2.cameraDevice = .rear
                self.cameraImagePicker2.allowsEditing = true
                self.cameraImagePicker2.delegate = self
                
                self.present(self.cameraImagePicker2, animated: true)
                
            }
            
            else {
                
                let alert = UIAlertController(title: "Error", message: "Camera not available.", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default))
                self.present(alert, animated: true)
                return
                
            }
        }))

        
        
        
        //Cancel Option
        alert.addAction(UIAlertAction(title: "Cancel", style: .destructive, handler: { (_) in
            print("User click Cancel button")
        }))

        self.present(alert, animated: true, completion: {
            print("completion block")
        })
        
    }
    

    @IBAction func clickShare(_ sender: UIButton) {
        
            // Shareable text
            let text = urlname.text ?? "No text provided"
        
        
            // Shareable image
            let image = display.image
            
            // Shareable URL
            var myWebsite: URL?
            if let webText = site.text, let url = URL(string: webText), UIApplication.shared.canOpenURL(url) {
            myWebsite = url
            } else {
                
            let alert = UIAlertController(title: "Invalid URL", message: "Please enter a valid URL.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            self.present(alert, animated: true)
            return
                
            }

        //Share the info
            var shareAll: [Any] = [text]
            if let imageToShare = image {
                shareAll.append(imageToShare)
            }
            if let websiteToShare = myWebsite {
                shareAll.append(websiteToShare)
            }
            

            let activityViewController = UIActivityViewController(activityItems: shareAll, applicationActivities: nil)
            activityViewController.popoverPresentationController?.sourceView = self.view
            self.present(activityViewController, animated: true)
        

        
    }
    
//func to select img from photo library
    internal func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        // select img from photo library
        if picker == PhotoLibraryImagePicker1 {
            
            print("selected Image Details: \(info)")
            
            if let image1 = info[.originalImage] as? UIImage {
                display.image = image1
                self.dismiss(animated: true, completion: nil)
            }
            // select img from camera
            else {
                
                print("selected Image Details: \(info)")
                
                let image2 = info [.editedImage] as? UIImage
                
                display.image = image2
                
                self.dismiss(animated: true, completion: nil)

                
            }

            
            
            
        }
        
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        
        if picker == PhotoLibraryImagePicker1 {
            
            self.dismiss(animated: true)
        }
        else {
            self.dismiss(animated: true)
            
        }
    }

}

