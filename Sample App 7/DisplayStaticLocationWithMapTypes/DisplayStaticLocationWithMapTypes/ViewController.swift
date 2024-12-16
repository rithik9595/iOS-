//
//  ViewController.swift
//  DisplayStaticLocationWithMapTypes
//
//  Created by FCI on 02/12/24.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {

    @IBOutlet var mv1: MKMapView!
    @IBOutlet var b1: UIButton!
    @IBOutlet var sc1: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let staticlocation = CLLocationCoordinate2D(latitude: , longitude: )
        
        let span1 = MKCoordinateSpan(latitudeDelta: , longitudeDelta: )
        
        let region1 = MKCoordinateRegion(center: staticlocation, span: span1)
        
        mv1.setRegion(region1, animated: true)
        
        
        //annotation
        //display annotaion
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = staticlocation
        annotation.title = ""
        annotation.subtitle = ""
        mv1.addAnnotation(annotation)
    }
    

    

    @IBAction func b1Click(_ sender: UIButton) {
        
        if sc1.selectedSegmentIndex == 0{
            
            mv1.mapType = .standard
            
        }else if sc1.selectedSegmentIndex == 1{
            
            mv1.mapType = .satellite
        }else {
            
            mv1.mapType = .hybrid
        }
       
    }
    
}

