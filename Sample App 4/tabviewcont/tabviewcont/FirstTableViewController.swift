//
//  FirstTableViewController.swift
//  tabviewcont
//
//  Created by FCI on 27/11/24.
//

import UIKit

class FirstTableViewController: UITableViewController {
    
    
    
    var section1Names: [String] = []
    var section1images: [String] = []
    
    var section2Names: [String] = []
    var section2images: [String] = []
    
  // @IBOutlet var img: UIImageView!
    
   // @IBOutlet var label1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        section1Names = ["Mac","iMac","MacBook Pro","MacBook Air"]
        section1images = ["img3","img3","img3","img3"]
        
        section2Names = ["iPhone","iPod","iPad"]
        section2images = ["iphone","iphone","iphone"]
        
      //  tableView1.delegate = self
       // tableView1.dataSource = self
        
            
        }
        
        //tableview Protocol Methods Implementations here
        
        //1. no of sections
    override func numberOfSections(in tableView: UITableView) -> Int {
            return 2
        }
        
        // 2. no  of row in section
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            
            if section == 0 {
                
                return section1Names.count
                
            }else {
                return section2Names.count
            }
        }
        
        //3. create & display the info in cells
        
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
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
        
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            
            if section == 0 {
                
                return "Mac"
            }
            else {
                return "ios"
            }
        }
        
        //5. Section Footer Title
        
    override func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
            if section == 0 {
                
                return "Mac End"
            }
            else {
                return "ios End"
            }
        }
        
        //6. height for hearder
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
            return 40
        }
        
        //7. hegith for footer
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
            return 40
        }
        
        //8.row height
        
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            
            return 60
        }
        
        //9. when user select any row in tableview
        
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            if indexPath.section == 0{
                
               // label1.text = section1Names[indexPath.row]
               // img.image = UIImage(named: section1images[indexPath.row])
            }
            else {
              //  label1.text = section2Names[indexPath.row]
               // img.image = UIImage(named: section2images[indexPath.row])
            }
        }
        
        //10. when user select any accesory detail buton
    override func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
            if indexPath.section == 0{
                //label1.text = section1Names[indexPath.row]
              //  img.image = UIImage(named: section1images[indexPath.row])
            }
            else {
               // label1.text = section2Names[indexPath.row]
               // img.image = UIImage(named: section2images[indexPath.row])
            }
        }
        
        //11 section index titles
        
    override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
            
            let indexTitles = ["Mac","ios"]
            return indexTitles
        }
        
        
        
        
        
        
        
        
        
        
        
        
        // MARK: - Table view data source
        
        /*override func numberOfSections(in tableView: UITableView) -> Int {
         // #warning Incomplete implementation, return the number of sections
         return 0
         }
         
         override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         // #warning Incomplete implementation, return the number of rows
         return 0
         }*/
        
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

