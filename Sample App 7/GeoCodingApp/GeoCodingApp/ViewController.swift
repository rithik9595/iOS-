//
//  ViewController.swift
//  GeoCodingApp
//
//  Created by FCI on 02/12/24.
//the process of finding details of loaction using latitude and longitutde reverse geocoding and vice versa forwading

import UIKit
import CoreLocation


class ViewController: UIViewController {
    
    
    @IBOutlet var b1: UIButton!
    @IBOutlet var b2: UIButton!
    
    
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func b1click(_ sender: UIButton) {
        
        let lat = 17.3850
        let lon = 78.486
        
        if let loc = CLLocation(latitude: lat, longitude: lon) as? CLLocation{
            CLGeocoder().reverseGeocodeLocation(loc, completionHandler: { (placemarks, error) in
                
                if let placemark1 = placemarks?[0] {
                    let name = placemark1.name!
                    let country = placemark1.country!
                    let adminstrative = placemark1.administrativeArea!
                    let locality = placemark1.locality!
                    let postalCode = placemark1.postalCode!
                    
                    
                    self.label1.text = """
                                       \(name)
                                       \(country)
                                       \(adminstrative)
                                       \(locality)
                                       \(postalCode)
                                       """
                    
                }})
            
        }
        
        
    }
    
    @IBAction func b2click(_ sender: UIButton) {
        
        
        let address = "India,hyderabad,502032"
        
        CLGeocoder().geocodeAddressString(address, completionHandler: {placemarks, error in
            if (error != nil ){
                return
                print("\(error)")
                
            }
            if let placemark1 = placemarks?[0]{
                
                let lat = String(format: "%.04f", (placemark1.location?.coordinate.latitude ?? 0.0)! )
                let lon = String(format: "%.04f", (placemark1.location?.coordinate.longitude ?? 0.0)! )
                
                self.label2.text = "\(lat)    \(lon)"
            }
        })
        
        
    }
    
    

}

