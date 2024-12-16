//
//  ForwardViewController.swift
//  Task2
//
//  Created by FCI on 03/12/24.
//

import UIKit
import CoreLocation

class ForwardViewController: UIViewController {
    
    
    @IBOutlet var details: UITextField!
    
    @IBOutlet var btnF: UIButton!
    
    @IBOutlet var labelF: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func ForwardClick(_ sender: UIButton) {
        
        
        // Forward Geo COding
            
           
        guard let address = details.text, !address.isEmpty else {
            print("Address is empty or nil.")
            return
        }

        CLGeocoder().geocodeAddressString(address) { placemarks, error in
            if let error = error {
                print("Geocoding failed with error: \(error.localizedDescription)")
                return
            }
            if let placemark = placemarks?.first {
                let lat = String(format: "%.04f", placemark.location?.coordinate.latitude ?? 0.0)
                let lon = String(format: "%.04f", placemark.location?.coordinate.longitude ?? 0.0)
                print("\(lat), \(lon)")
                
                self.labelF.text = "Latitude: \(lat) and Longitude: \(lon)"
            } else {
                print("No placemarks found for the address.")
            }
        }

    }
    
 

}
