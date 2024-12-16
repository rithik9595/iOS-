//
//  customerTableViewController.swift
//  TableViewContentWithoutAdding
//
//  Created by FCI on 28/11/24.
//

import UIKit

class customerTableViewController: UITableViewController {
    
    
    var TollyHero: [String] = []
    var CarNames: [String] = []
    var BikleNames: [String] = []
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        // 3 Sections Table2
        TollyHero = ["Prabhas","Ram","Arjun","Allu","Nani"]
        CarNames = ["honda","maruti","kia","toyato"]
        BikleNames = ["royal","harle","suszu"]
        
        
    }
    
    
    
    //1 method no of section
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 3
    }
    
    //2 no of rows and assign section
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return TollyHero.count
        }else if section == 1 {
            return CarNames.count
        }else {
            return BikleNames.count
        }
    }
    
    // 3 display row info
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell3 = tableView.dequeueReusableCell(withIdentifier: "id1", for: indexPath)
            
            cell3.textLabel?.text = TollyHero[indexPath.row]
            cell3.accessoryType = .detailDisclosureButton
            return cell3
        }else if indexPath.section == 1 {
            
            let cell4 = tableView.dequeueReusableCell(withIdentifier: "id1", for: indexPath)
            cell4.textLabel?.text = CarNames[indexPath.row]
            cell4.accessoryType = .detailDisclosureButton
            
            return cell4
        }else {
            let cell5 = tableView.dequeueReusableCell(withIdentifier: "id1", for: indexPath)
            cell5.textLabel?.text = BikleNames[indexPath.row]
            cell5.accessoryType = .detailDisclosureButton
            return cell5
        }
    }
    
    
    // 4. header title
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Hero Names"
        }else if section == 1 {
            return "Cars"
        }else {
            return "Bikes"
        }
    }
    
    override func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        if section == 0 {
            return "Hero Names End"
        }else if section == 1 {
            return "Cars End"
        }else {
            return "Bikes End"
        }
    }

        
    
    
    



    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    // MARK: - Table view data source

   /* override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0*/
    
    
    






































    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
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
