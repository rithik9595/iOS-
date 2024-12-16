//
//  ViewController.swift
//  Task3
//
//  Created by FCI on 25/11/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var change: UISegmentedControl!
    @IBOutlet var display: UILabel!
    @IBOutlet var img: UIImageView!
    @IBOutlet var descript: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Additional setup if needed
    }

    @IBAction func clickChangeplac(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            self.view.backgroundColor = UIColor.blue
            display.text = "HYDERABAD"
            img.image = UIImage(named: "hyderabad")
            loadTextFile(named: "hyderabad")
        } else if sender.selectedSegmentIndex == 1 {
            self.view.backgroundColor = UIColor.yellow
            display.text = "CHENNAI"
            img.image = UIImage(named: "chennai")
            loadTextFile(named: "chennai")
        } else if sender.selectedSegmentIndex == 2 {
            self.view.backgroundColor = UIColor.green
            display.text = "KERALA"
            img.image = UIImage(named: "kerela")
            loadTextFile(named: "kerela")
        }
    }

    private func loadTextFile(named fileName: String) {
        if let path = Bundle.main.path(forResource: fileName, ofType: "text") {
            do {
                // Specify UTF-8 encoding (or change if your file uses a different encoding)
                let str = try String(contentsOfFile: path, encoding: .utf8)
                descript.text = str
            } catch {
                print("Error reading file: \(error.localizedDescription)")
            }
        } else {
            print("File \(fileName).text not found.")
        }
    }
}
