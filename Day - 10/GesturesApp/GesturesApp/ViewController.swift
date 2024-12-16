//
//  ViewController.swift
//  GesturesApp
//
//  Created by Naga Murali Akula on 02/12/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var iv1: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        /*
        
        // 1. Tap Gesture
        
        let tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))

              tap.numberOfTapsRequired = 1  //optional

              self.iv1.addGestureRecognizer(tap)
         
         */
        
        /*
        //2. LongPressed gesture

    let longPressed:UILongPressGestureRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(self.handleLongPressed(_:)))

        longPressed.minimumPressDuration = 3  //optional

      self.iv1.addGestureRecognizer(longPressed)
         
         */
        
        /*
        //3. rotation gesture

    let rotation:UIRotationGestureRecognizer = UIRotationGestureRecognizer(target: self, action: #selector(self.handleRotation(_:)))

        self.iv1.addGestureRecognizer(rotation)
        
         */
        
        /*
        //4. Pinch gesture

    let pinch:UIPinchGestureRecognizer = UIPinchGestureRecognizer(target: self, action: #selector(self.handlePinch(_:)))

    self.iv1.addGestureRecognizer(pinch)
         
         */
        
        /*
        
        //5. Pan gesture
        
        let pan:UIPanGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(self.handlePan(_:)))

         self.iv1.addGestureRecognizer(pan)
         
         */
        
        //6. Swipe gesture

            let rightSwipe : UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(self.handleSwipe(_:)))

            rightSwipe.direction = .right //change direction as per your need

            self.iv1.addGestureRecognizer(rightSwipe)

         

            let upSwipe : UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(self.handleSwipe(_:)))

            upSwipe.direction = .up //change direction as per your need

            self.iv1.addGestureRecognizer(upSwipe)
        
        
        let leftSwipe : UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(self.handleSwipe(_:)))

        leftSwipe.direction = .left //change direction as per your need

        self.iv1.addGestureRecognizer(leftSwipe)

     

        let downSwipe : UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(self.handleSwipe(_:)))

        downSwipe.direction = .down //change direction as per your need

        self.iv1.addGestureRecognizer(downSwipe)
        
        
    }
    
    /*
    // 1. Tap Gesture Implementation
     
    @objc func handleTap(_ sender: UITapGestureRecognizer? = nil) {

       print("view is tapped")

        self.view.backgroundColor = .yellow

        }
     */
    
    /*
    // 2. Lond Press Gesture Implementation
    
    @objc func handleLongPressed(_ sender: UILongPressGestureRecognizer? = nil) {
        
        print("Long press is detected")
        
        self.view.backgroundColor = .cyan
    }
     
     */
    
    /*
    
    // 3. Rotation Gesture Implementation
    
    @objc func handleRotation(_ sender: UIRotationGestureRecognizer? = nil) {

        print("Rotation is detected")
        
    sender?.view?.transform = (sender?.view!.transform.rotated(by: sender!.rotation))!

            sender!.rotation = 0
        
          print(sender?.view?.transform)

        }
     */
    
    /*
    
    // 4. Pinch Gesture Implementation
    
   @objc func handlePinch(_ sender: UIPinchGestureRecognizer? = nil) {

           print("Pinch is detected")

           sender?.view!.transform = (sender?.view?.transform.scaledBy(x: sender!.scale, y: sender!.scale))!

           sender?.scale = 1.0
     
     
       

       }
    
    */
    
    /*
    // 5. Pan Gesture Implementation
    
    @objc func handlePan(_ sender: UIPanGestureRecognizer? = nil) {

           print("Pan is detected")

           let translation = sender?.translation(in: self.view)

           sender?.view!.center = CGPoint(x: (sender?.view!.center.x)! + translation!.x, y: (sender?.view!.center.y)! + translation!.y)

           sender?.setTranslation(CGPoint.zero, in: self.view)


       }
    
     */
    
    
    // 6. swipe Gesture Implementation
    
    @objc func handleSwipe(_ sender: UISwipeGestureRecognizer) {
        
        switch sender.direction {
        case .right:
            
            print("Right Swipe")
            
            self.view.backgroundColor = .red
            
        case .left:
            
            print("Left Swipe")
            self.view.backgroundColor = .brown
            
        case.up:
            print("Up Swipe")
            self.view.backgroundColor = .green
            
            
        case.down:
            
            print("Down Swipe")
            
            self.view.backgroundColor = .orange
            
        default:
            
            break
        }
        
    }
    

    
}

