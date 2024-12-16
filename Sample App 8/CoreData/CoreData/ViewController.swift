//
//  ViewController.swift
//  CoreData
//
//  Created by FCI on 03/12/24.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    
    @IBOutlet var name: UITextField!
    @IBOutlet var address: UITextField!
    @IBOutlet var phnum: UITextField!
    
    @IBOutlet var label1: UILabel!
    
    @IBOutlet var save: UIButton!
    @IBOutlet var find: UIButton!
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func clickSave(_ sender: UIButton) {
        
        let context  = appDelegate.persistentContainer.viewContext
        
        let entity = NSEntityDescription.entity(forEntityName: "Contacts", in: context)
        
        let newUser = NSManagedObject(entity: entity!, insertInto: context)
        
        newUser.setValue(name.text, forKey: "name")
        newUser.setValue(address.text, forKey: "address")
        newUser.setValue(phnum.text, forKey: "phonenumber")
        
        
        do{
            try context.save()
            name.text = ""
            address.text = ""
            phnum.text = ""
            label1.text = "Contact Saved"
        } catch {
            print("Failed saving")
            
            label1.text = "Failed Contact Saved"
            
        }
        
        
    }
    
    
    @IBAction func clickFind(_ sender: UIButton) {
        
        let context  = appDelegate.persistentContainer.viewContext
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Contacts")
        request.predicate = NSPredicate(format: "address=%@", name.text!)

        
        
        do{
            let result = try context.fetch(request)
            for data in result as! [NSManagedObject]{
                address.text = data.value(forKey: "name") as? String
                phnum.text = data.value(forKey: "phonenumber") as? String
                
                label1.text = "Matches found: \(result.count)"
            }
        } catch {
            print("Failed")
            
            label1.text = "Failed Contact Saved"
            
        }
    }
    
}

