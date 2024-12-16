//
//  customViewController.swift
//  JsonMaps
//
//  Created by FCI on 08/12/24.
//

import UIKit
import MapKit
import QuartzCore

class customViewController: UIViewController {

    
    @IBOutlet var mpvi1: MKMapView!
    @IBOutlet var cntrl: UISegmentedControl!
    
    var lati: String!
    var loni: String!
    var tempi: String!
    var admi: String!
    var loci: String!
    
    var Segi: CALayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let Segi = cntrl.layer
        Segi.cornerRadius = 8
        Segi.borderColor = UIColor(red: 176/255, green: 176/255, blue: 176/255, alpha: 1.0).cgColor  // Light Gray border
        Segi.borderWidth = 1
        Segi.backgroundColor = UIColor.white.cgColor  

        // For segment control active state
        cntrl.selectedSegmentTintColor = UIColor(red: 0/255, green: 123/255, blue: 255/255, alpha: 1.0) // Primary Blue

        
        let staticLocation = CLLocationCoordinate2D(latitude: Double(lati ?? "") ?? 0.0, longitude: Double(loni ?? "") ?? 0.0)
        
        
        let span1 = MKCoordinateSpan(latitudeDelta: 0.003, longitudeDelta: 0.003)
        
        let region1 = MKCoordinateRegion(center: staticLocation, span: span1)
        
        mpvi1.setRegion(region1, animated: true)
        
        // Annotations
        
        // displaying Annotation on Mapview
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = staticLocation
        annotation.title = "Address: \(admi!), \(loci!)"
        annotation.subtitle = "Temperature: \(tempi!)°C"
        mpvi1.addAnnotation(annotation)
        
  
    }
    
    @IBAction func ClickNxt(_ sender: UISegmentedControl) {
        if cntrl.selectedSegmentIndex == 0 {
            mpvi1.mapType = .standard
        }
        else if cntrl.selectedSegmentIndex == 1{
            mpvi1.mapType = .satellite
        }
        
        else {
            mpvi1.mapType = .hybrid
            
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
