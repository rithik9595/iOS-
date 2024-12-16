//
//  ViewController.swift
//  stackViewsApp
//
//  Created by Naga Murali Akula on 03/04/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var stackView1: UIStackView!
    
    @IBOutlet var placeNaameLabel: UILabel!
    @IBOutlet var placeImg: UIImageView!
    @IBOutlet var placeInfo: UITextView!
    @IBOutlet var segControl1: UISegmentedControl!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func segControl1Click() {
        
        var indexValue: Int = segControl1.selectedSegmentIndex
            
        if indexValue == 0 {
            
            placeNaameLabel.text = "Taj Mahal"
            
            placeImg.image = UIImage(named: "tajImmage.jpeg")
            
            do{
                let path = Bundle.main.path(forResource: "taj", ofType: "txt")
                let str = try String(contentsOfFile: path!)
                placeInfo.text = str
            }catch{
                print(error.localizedDescription)
            }
            
        }
        else  if indexValue == 1 {
            
            placeNaameLabel.text = "Red Fort"
            
            placeImg.image = UIImage(named: "redFortImage.jpeg")
            
            do{
                let path = Bundle.main.path(forResource: "redFort", ofType: "txt")
                let str = try String(contentsOfFile: path!)
                placeInfo.text = str
            }catch{
                print(error.localizedDescription)
            }
            
            
        }
        
        else {
            
            
            placeNaameLabel.text = "Charminar"
            
            placeImg.image = UIImage(named: "charMinarImage.jpeg")
            
            do{
                let path = Bundle.main.path(forResource: "charMinaaar", ofType: "txt")
                let str = try String(contentsOfFile: path!)
                placeInfo.text = str
            }catch{
                print(error.localizedDescription)
            }
            
        }
        
        
    }


}

