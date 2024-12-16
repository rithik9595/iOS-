//
//  ViewController.swift
//  tableviewwithnavigation
//
//  Created by FCI on 27/11/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tb1: UITableView!
    
    var array1Data: [String] = []
    var array2Image: [String] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = "TableView With Navigation"
        
        array1Data = ["ball","man","flower"]
        array2Image = ["football","img","img1"]
        
        
        tb1.delegate = self
        tb1.dataSource = self
        
    }
    

    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array1Data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell1 = tableView.dequeueReusableCell(withIdentifier: "id1", for: indexPath)
        
        cell1.textLabel?.text = array1Data[indexPath.row]
        cell1.imageView?.image = UIImage(named: array1Data[indexPath.row])
        cell1.backgroundColor = .yellow
        cell1.accessoryType = .detailDisclosureButton
        cell1.tintColor = .black
        
        return cell1
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let nextScreen = storyboard.instantiateViewController(withIdentifier: "storyid1") as! secondViewController
        
        
        nextScreen.string1 =  array1Data[indexPath.row]
        nextScreen.image1 = UIImage(named: array2Image[indexPath.row])!
        
        self.navigationController?.pushViewController(nextScreen, animated: true)
        
    }

}

