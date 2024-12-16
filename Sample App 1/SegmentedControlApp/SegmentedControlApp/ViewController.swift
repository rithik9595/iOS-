//
//  ViewController.swift
//  SegmentedControlApp
//
//  Created by FCI on 22/11/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var sg1: UISegmentedControl!
    var sg2: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.displaySegmentedControl()
    }
    
    @IBAction func sc1click() {
        let index = sg1.selectedSegmentIndex
        
        // Simplified the checks for the background color change
        switch index {
        case 0:
            self.view.backgroundColor = .yellow
            sg1.selectedSegmentTintColor = .yellow
        case 1:
            self.view.backgroundColor = .white
            sg1.selectedSegmentTintColor = .white
        case 2:
            self.view.backgroundColor = .green
            sg1.selectedSegmentTintColor = .green
        default:
            break
        }
    }

    func displaySegmentedControl() {
        // Use a safe method to add the UIImage if needed
        let pencilImage = UIImage(systemName: "pencil.circle.file")
        let segmentName: [Any] = ["Orange", "White", "Green", pencilImage ?? "Image Not Available"]
        
        sg2 = UISegmentedControl(items: segmentName)
        
        sg2.frame = CGRect(x: 40, y: 300, width: 350, height: 40)
        sg2.backgroundColor = .cyan
        sg2.selectedSegmentTintColor = .red
        
        sg2.addTarget(self, action: #selector(sg2Click), for: .valueChanged)
        
        self.view.addSubview(sg2)
    }

    @objc func sg2Click() {
        let index = sg2.selectedSegmentIndex
        
        // Simplified the checks for the background color change
        switch index {
        case 0:
            self.view.backgroundColor = .yellow
        case 1:
            self.view.backgroundColor = .blue
        case 2:
            self.view.backgroundColor = .brown
        default:
            break
        }
    }
}
