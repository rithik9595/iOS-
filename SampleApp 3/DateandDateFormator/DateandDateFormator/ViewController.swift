//
//  ViewController.swift
//  DateandDateFormator
//
//  Created by FCI on 26/11/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var display: UILabel!
    @IBOutlet var clickbtn: UIButton!
    
    @IBOutlet var display2: UILabel!
    var timer1: Timer!
    
    var dateinfo: Date!
    var df1: DateFormatter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        timer1 = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(tick), userInfo: nil, repeats: true)
        
    }
    
    @objc func tick() {
        display2.text = DateFormatter.localizedString(from: Date(), dateStyle: .long, timeStyle: .medium)
    }


    @IBAction func clickUpdate(_ sender: UIButton) {
        
        dateinfo = Date()
        
        print(dateinfo!)
        
        df1 = DateFormatter()
        
        df1.dateStyle = .full
        df1.timeStyle = .full
        
        display.text = df1.string(from: dateinfo)
        
    }
}

