//
//  ViewController.swift
//  pickerviewAndDatePickerwithTextFields
//
//  Created by FCI on 27/11/24.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet var tf1: UITextField!
    @IBOutlet var tf2: UITextField!
    
    var pv1: UIPickerView!
    var listofCountires: [String]  = []
    
    
    var dp1: UIDatePicker!
    var df1: DateFormatter!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        listofCountires = ["India","USA","Canada","Sri Lanka","China","UK","AUS"]
        
        // pickerview Code
        
        pv1 = UIPickerView()
        pv1.backgroundColor = .yellow
        pv1.delegate = self
        pv1.dataSource = self
        
        tf1.inputView = pv1
        
        
        // Date Picker Coode
        
        dp1 = UIDatePicker()
        dp1.backgroundColor = .green
        dp1.datePickerMode = .dateAndTime
        dp1.preferredDatePickerStyle = .wheels
        dp1.addTarget(self, action: #selector(dp1Click), for: .valueChanged)
        
        tf2.inputView = dp1
        
        
    }
    
    //pickerview protocol methods implementation
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return listofCountires.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return listofCountires[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        tf1.text = listofCountires[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 40
    }
    
    // keyboard hiding
    
    /*override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        tf1.resignFirstResponder()
        tf2.resignFirstResponder()
    }*/
    
    @objc func  dp1Click() {
        
        df1 = DateFormatter()
        df1.dateStyle = .medium
        df1.timeStyle = .medium
        tf2.text = df1.string(from: dp1.date)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        tf1.resignFirstResponder()
        tf2.resignFirstResponder()
    }
}

