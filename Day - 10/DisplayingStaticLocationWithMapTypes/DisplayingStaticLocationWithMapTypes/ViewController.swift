//
//  ViewController.swift
//  DisplayingStaticLocationWithMapTypes
//
//  Created by Naga Murali Akula on 28/02/23.
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
    }
    
    @IBAction func b1Click() {
        
        // Code for  displaying static loaction information in mapview
        
        let staticlocation = CLLocationCoordinate2D(
            latitude: 12.641891,
                  longitude: 77.440458
              )
        
        let span1 = MKCoordinateSpan(latitudeDelta: 0.003, longitudeDelta: 0.003)
                  
        let region1 = MKCoordinateRegion(center: staticlocation, span: span1)
                         
        mv1.setRegion(region1, animated: true)
        
        // Annotations
        
        // displaying Annotation on Mapview
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = staticlocation
        annotation.title = "JAIN UNIVERSITY GLOBAL CAMPUS"
        annotation.subtitle = "NH - 209,Jakkasandra Post, Bengaluru - Kanakapura Rd, Bengaluru, Karnataka 562112"
        mv1.addAnnotation(annotation)
        
    }
    
    @IBAction func sc1Click() {
        
        let index: Int = sc1.selectedSegmentIndex
        
        if index == 0 {
            mv1.mapType = .standard
        }
        else if index == 1{
            mv1.mapType = .satellite
        }
        
        else {
            mv1.mapType = .hybrid
            
        }
    }


}

/*
 
 Map kit --> display the maps
 
 Core Location --> current location information
 
 
 
 
 */
