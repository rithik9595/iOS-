//
//  ViewController.swift
//  textSaveSubmitdispaly
//
//  Created by FCI on 24/11/24.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // Text Field
    @IBOutlet var name: UITextField!
    @IBOutlet var pass: UITextField!
    @IBOutlet var number: UITextField!
    @IBOutlet var mail: UITextField!
    @IBOutlet var city: UITextField!
    
    // Button Field
    @IBOutlet var save: UIButton!
    
    // Label Field
    @IBOutlet var display: UILabel!
    
    // Dictionary to save data
    var savedData = UserDefaults!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let tapGest = UITapGestureRecognizer(target: self, action: #selector(endGest))
        self.view.addGestureRecognizer(tapGest)
    }
    
    @IBAction func clickSavedisplay(_ sender: UIButton) {
        // Validate and save data
        guard let nametxt = name.text, !nametxt.isEmpty,
              let passtxt = pass.text, !passtxt.isEmpty,
              let numbertxt = number.text, !numbertxt.isEmpty,
              let mailtxt = mail.text, !mailtxt.isEmpty,
              let citytxt = city.text, !citytxt.isEmpty else {
            display.text = "Enter All Details Fields Are Missing"
            return
        }
        
        // Save the data to the dictionary
        savedData["Name"] = nametxt
        savedData["Password"] = passtxt
        savedData["Phone Number"] = numbertxt
        savedData["Email"] = mailtxt
        savedData["City"] = citytxt
        
        display.text = "Data saved successfully!"
    }
    
    @IBAction func submitDisplay(_ sender: UIButton) {
        // Display saved data
        if savedData.isEmpty {
            display.text = "No Data Found To Display"
        } else {
            display.text = """
                Name: \(savedData["Name"] ?? "")
                Password: \(savedData["Password"] ?? "")
                Phone Number: \(savedData["Phone Number"] ?? "")
                Email: \(savedData["Email"] ?? "")
                City: \(savedData["City"] ?? "")
                """
        }
    }
    
    @objc func endGest() {
        self.view.endEditing(true)
    }
}
