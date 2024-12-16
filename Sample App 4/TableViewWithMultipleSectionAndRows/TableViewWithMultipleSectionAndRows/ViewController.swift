//
//  ViewController.swift
//  TableViewWithMultipleSectionAndRows
//
//  Created by FCI on 27/11/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView1: UITableView!
    
    var section1Names: [String] = []
    var section1images: [String] = []
    
    var section2Names: [String] = []
    var section2images: [String] = []
    
    @IBOutlet var img: UIImageView!
    
    @IBOutlet var label1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        section1Names = ["Mac","iMac","MacBook Pro","MacBook Air"]
        section1images = ["img","img3","imgbal","img"]
        
        section2Names = ["iPhone","iPod","iPad"]
        section2images = ["img","img3","imgbal"]
        
        tableView1.delegate = self
        tableView1.dataSource = self
        
    }
    
    //tableview Protocol Methods Implementations here
    
    //1. no of sections
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    // 2. no  of row in section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            
            return section1Names.count
            
        }else {
            return section2Names.count
        }
    }
    
    //3. create & display the info in cells
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            
            let cell1 = tableView.dequeueReusableCell(withIdentifier: "id1", for: indexPath)
            
            cell1.textLabel?.text = section1Names[indexPath.row]
            cell1.imageView?.image = UIImage(named: section1images[indexPath.row])
            cell1.backgroundColor = .yellow
            cell1.accessoryType = .detailDisclosureButton
            cell1.tintColor = .black
            
            return cell1
        }
        else{
            
            
            let cell2 = tableView.dequeueReusableCell(withIdentifier: "id1", for: indexPath)
            
            cell2.textLabel?.text = section2Names[indexPath.row]
            cell2.imageView?.image = UIImage(named: section2images[indexPath.row])
            cell2.backgroundColor = .blue
            cell2.accessoryType = .detailDisclosureButton
            
            return cell2
            
        }
    }
    
    // 4. Section Header Title
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        if section == 0 {
            
            return "Mac"
        }
        else {
            return "ios"
        }
    }
    
    //5. Section Footer Title
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        if section == 0 {
            
            return "Mac End"
        }
        else {
            return "ios End"
        }
    }
    
    //6. height for hearder
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    //7. hegith for footer
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 40
    }
    
    //8.row height
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 60
    }
    
    //9. when user select any row in tableview
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0{
            
            label1.text = section1Names[indexPath.row]
            img.image = UIImage(named: section1images[indexPath.row])
        }
        else {
            label1.text = section2Names[indexPath.row]
            img.image = UIImage(named: section2images[indexPath.row])
        }
    }
    
    //10. when user select any accesory detail buton
    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        if indexPath.section == 0{
            label1.text = section1Names[indexPath.row]
            img.image = UIImage(named: section1images[indexPath.row])
        }
        else {
            label1.text = section2Names[indexPath.row]
            img.image = UIImage(named: section2images[indexPath.row])
        }
    }
    
    //11 section index titles
    
    func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        
        let indexTitles = ["Mac","ios"]
        return indexTitles
    }
}
