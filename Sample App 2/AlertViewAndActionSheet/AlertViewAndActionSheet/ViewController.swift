//
//  ViewController.swift
//  AlertViewAndActionSheet
//
//  Created by Naga Murali Akula on 25/11/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var b1: UIButton!
    @IBOutlet var b2: UIButton!
    @IBOutlet var b3: UIButton!
    @IBOutlet var b4: UIButton!
    @IBOutlet var b5: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func b1Click() {
        
        let alert = UIAlertController(title: "Sign out?", message: "You can always access your content by signing back in", preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: { _ in
            //Cancel Action
            
            print("Canel Button Clicked...!!")
            
        }))
        
        alert.addAction(UIAlertAction(title: "Sign out",
                                      style: .default,
                                      handler: {(_: UIAlertAction!) in
                                        //Sign out action
        }))
      
        // display alert
        self.present(alert, animated: true, completion: nil)
        
        
    }
    
    @IBAction func b2Click() {
        
        
        let alert = UIAlertController(title: "Sign out?", message: "You can always access your content by signing back in", preferredStyle: .alert)
        
        

        alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: { _ in
            //Cancel Action
            
            print("Canel Button Clicked...!!")
            
        }))
        
        
        alert.addAction(UIAlertAction(title: "Sign out",
                                      style: .destructive,
                                      handler: {(_: UIAlertAction!) in
                                        //Sign out action
        }))
      
        // display alert
        self.present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func b3Click() {
        
        
        let alert = UIAlertController(title: "Alert", message: "Alert with more than 2 buttons", preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "Default", style: .default, handler: { (_) in
            print("You've pressed default")
        }))

        alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: { (_) in
            print("You've pressed cancel")
        }))

        alert.addAction(UIAlertAction(title: "Destructive", style: .destructive, handler: { (_) in
            print("You've pressed the destructive")
        }))
        self.present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func b4Click() {
        
        let alertController = UIAlertController(title: "Add new tag", message: nil, preferredStyle: .alert)
        
        let confirmAction = UIAlertAction(title: "Add", style: .default) { (_) in
            if let txtField = alertController.textFields?.first,
                let text = txtField.text {
                // operations
                print("Text==>" + text)
            }
        }
        
        alertController.addAction(confirmAction)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (_) in }
        alertController.addTextField { (textField) in
            textField.placeholder = "Tag"
        }
       
        alertController.addAction(cancelAction)
        
        self.present(alertController, animated: true, completion: nil)
        
        
        
    }
    
    @IBAction func b5Click() {
        
        let alert = UIAlertController(title: "Title", message: "Please Select an Option", preferredStyle: .actionSheet)
        
        
        alert.addAction(UIAlertAction(title: "Approve", style: .default, handler: { (_) in
            print("User click Approve button")
        }))

        alert.addAction(UIAlertAction(title: "Edit", style: .default, handler: { (_) in
            print("User click Edit button")
        }))

        alert.addAction(UIAlertAction(title: "Delete", style: .destructive, handler: { (_) in
            print("User click Delete button")
        }))

        alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: { (_) in
            print("User click Dismiss button")
        }))

        self.present(alert, animated: true, completion: {
            print("completion block")
        })
        
    }

}

