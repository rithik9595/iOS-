//
//  ViewController.swift
//  PickerViewApp
//
//  Created by FCI on 26/11/24.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet var pv1: UIPickerView!
    @IBOutlet var display: UILabel!
    @IBOutlet var img: UIImageView!
    
    var array1: [String] = []
    var array2: [String] = []
    
    var array3: [String] = []
    var array4: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        array1 = ["iMac","Mini Mac","Mac Book Pro","Mac Book Air"]
        array2 = ["iPhone","iPad","iPod Touch"]
        
        array3 = ["mac","mac","mac","mac"]
        array4 = ["iphone","iphone","iphone"]
        
        //deleget code
        pv1.delegate = self
        pv1.dataSource = self
        
    }
    
    //Picker View Protocol Methods implementations
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return 2
    }
    
    // 2. no of rows in a component
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        if component == 0{
            
            return array1.count
        }
        else {
            return array2.count
        }
    }
    
    //3 . display the info of array in rows
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        
        if component == 0 {
            
            return array1[row]
        }
        else {
            
            return array2[row]
        }
    }
    
    // 4. when user select any row in component
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if component == 0 {
            display.text = array1[row]
            img.image = UIImage(named: array3[row])
        }
        else {
            display.text = array2[row]
            img.image = UIImage(named: array4[row])
        }
    }
    // 5. row hide fo component
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        
        return 40
    }
    
    // 6. row width
    
    func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        
        return 150
    }


}

