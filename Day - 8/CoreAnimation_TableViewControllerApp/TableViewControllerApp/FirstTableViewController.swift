//
//  FirstTableViewController.swift
//  TableViewControllerApp
//
//  Created by Naga Murali Akula on 22/02/23.
//

import UIKit

class FirstTableViewController: UITableViewController {
    
    var section1Names: [String] = []
    var section1Images: [String] = []
    
    var section2Names: [String] = []
    var section2Images: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        section1Names = ["Mini-MAC","iMAC","MAC Book Pro", "MAC Book Air"]
        section1Images = ["Takeoff_logo.png","Takeoff_logo.png","Takeoff_logo.png","Takeoff_logo.png"]
        
        
        section2Names = ["IPhone","IPad","iPOD Touch"]
        section2Images = ["Takeoff_logo.png","Takeoff_logo.png","Takeoff_logo.png"]
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        if section == 0 {
            return section1Names.count
        }
        
        else {
            
            return section2Names.count
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
            // creating cells
            let cell = tableView.dequeueReusableCell(withIdentifier: "identifier1", for: indexPath)
            
            // displayung the data in cells
            
            cell.textLabel?.text = section1Names[indexPath.row]
            cell.imageView?.image = UIImage(named: section1Images[indexPath.row])
            cell.backgroundColor = .cyan
            cell.accessoryType = .detailDisclosureButton
            cell.tintColor = .black
            
            return cell
            
        }
        
        else {
            
            // creating cells
            let cell = tableView.dequeueReusableCell(withIdentifier: "identifier1", for: indexPath)
            
            // displayung the data in cells
            
            cell.textLabel?.text = section2Names[indexPath.row]
            cell.imageView?.image = UIImage(named: section2Images[indexPath.row])
            cell.backgroundColor = .yellow
            cell.accessoryType = .detailDisclosureButton
            cell.tintColor = .black
            
            return cell
        }
      
    }
    
    //4. header title
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        if section == 0
        {
            
            return "MAC OS Devices List"
        }
        else {
            return "iOS Devices List"
        }
    }
    
    // 5. footer title
    
    override func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
       
        if section == 0
        {
            
            return "MAC OS Devices List End Here"
        }
        else {
            return "iOS Devices List End Here"
        }
    }
    
    //6. row height
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 80
        
    }

    
    //7. height for header in section
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return 20
    }
    
    //8. height for footer in section
    
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 40
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.animateTable()
    }
    
    func animateTable() {
   tableView.reloadData()
      let cells = tableView.visibleCells
    let tableHeight: CGFloat = tableView.bounds.size.height
   for i in cells {
     let cell: UITableViewCell = i as UITableViewCell
      cell.transform = CGAffineTransform(translationX: 0, y: tableHeight)
  }
   var index = 0
   for a in cells {
    let cell: UITableViewCell = a as UITableViewCell
       UIView.animate(withDuration: 1.5, delay: 0.09 * Double(index), usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .allowAnimatedContent,
   animations: {
     cell.transform = CGAffineTransform(translationX: 0, y: 0);
   }, completion: nil)
   
   index += 1 }
  } 
    
    
    
    
    
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*h
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
