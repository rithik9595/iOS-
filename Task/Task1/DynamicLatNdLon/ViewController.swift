//
//  ViewController.swift
//  Task1
//
//  Created by FCI on 02/12/24.
//

import UIKit
import MapKit
import CoreLocation


class ViewController: UIViewController {
    
    
    @IBOutlet var lat: UITextField!
    @IBOutlet var lon: UITextField!
    @IBOutlet var anno: UITextField!
    
    @IBOutlet var btn: UIButton!
    
    @IBOutlet var mv: MKMapView!
    
    @IBOutlet var segcntrl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func btnClick(_ sender: UIButton) {
        
        let staticLocation = CLLocationCoordinate2D(latitude: Double(lat.text ?? "") ?? 0.0, longitude: Double(lon.text ?? "") ?? 0.0)
        
        
        let span1 = MKCoordinateSpan(latitudeDelta: 0.003, longitudeDelta: 0.003)
        
        let region1 = MKCoordinateRegion(center: staticLocation, span: span1)
        
        mv.setRegion(region1, animated: true)
        
        // Annotations
        
        // displaying Annotation on Mapview
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = staticLocation
        annotation.title = anno.text
        mv.addAnnotation(annotation)
        
    }
    
    
    
    @IBAction func sccntrl(_ sender: UISegmentedControl) {
        
        
        
        if segcntrl.selectedSegmentIndex == 0 {
            mv.mapType = .standard
        }
        else if segcntrl.selectedSegmentIndex == 1{
            mv.mapType = .satellite
        }
        
        else {
            mv.mapType = .hybrid
            
        }
    }
    
    
    
}

