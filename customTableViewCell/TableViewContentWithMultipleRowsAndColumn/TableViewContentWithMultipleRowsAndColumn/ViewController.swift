//
//  ViewController.swift
//  TableViewContentWithMultipleRowsAndColumn
//
//  Created by FCI on 28/11/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet var table1: UITableView!
    
    @IBOutlet var label1: UILabel!
    @IBOutlet var image1: UIImageView!
    
    
    var Section1labe: [String] = []
    var Section1image: [String] = []
    
    var Section2labe: [String] = []
    var Section2image: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Section1labe = ["Mac","Mac Air","Mac Book","Mac Pro","Mac Mini"]
        Section1image = ["mac","mac","mac","mac","mac"]
        
        Section2labe = ["iwatch","Air","Book","Pro","Mini"]
        Section2image = ["iphone","iphone","iphone","iphone","iphone",]
        
        table1.delegate = self
        table1.dataSource = self
    }
    
    //1 num of section
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    //2
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return Section1labe.count
        }
        else {
            return Section2labe.count
        }
    }
    
    
    //3. create & display the info in cells
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            
            let cell1 = tableView.dequeueReusableCell(withIdentifier: "id1", for: indexPath) as! customTableViewCell
            
            cell1.label2.text = Section1labe[indexPath.row]
            cell1.image2.image = UIImage(named: Section2image[indexPath.row])
            
            // cell1.textLabel?.text = section1Names[indexPath.row]
            //cell1.imageView?.image = UIImage(named: section1Images[indexPath.row])
            //cell1.backgroundColor = .yellow
            //cell1.accessoryType = .detailDisclosureButton
           // cell1.tintColor = .black
            
            return cell1
            
        }
        else {
            
            let cell2 = tableView.dequeueReusableCell(withIdentifier: "id1", for: indexPath) as! customTableViewCell
            
            cell2.label2.text = Section2labe[indexPath.row]
            cell2.image2.image = UIImage(named:Section2image[indexPath.row])
            
            // cell2.textLabel?.text = section2Names[indexPath.row]
            //  cell2.imageView?.image = UIImage(named:section2Images[indexPath.row])
            //cell2.backgroundColor = .yellow
            //cell2.accessoryType = .detailDisclosureButton
            //cell2.tintColor = .black
            
            return cell2
        }
        
        
    }
    
    
    
}

