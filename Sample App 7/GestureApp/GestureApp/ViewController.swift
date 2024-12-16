//
//  ViewController.swift
//  GestureApp
//
//  Created by FCI on 02/12/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var iv1: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // tap gesture
       /* let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        
        tap.numberOfTapsRequired = 1
        self.iv1.addGestureRecognizer(tap)
        
        
        // long press gesture
        let longPressed: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.handlongPressed(_:)))
        
        tap.numberOfTapsRequired = 3
        self.iv1.addGestureRecognizer(longPressed)*/
        
        //rotation gesture
        /*let rotation: UIRotationGestureRecognizer = UIRotationGestureRecognizer(target: self, action: #selector(self.handelrotation(_:)))
        
       
        self.iv1.addGestureRecognizer(rotation)*/
        
        
        
        //4 Pinch Gesture
        /*let pinch: UIPinchGestureRecognizer = UIPinchGestureRecognizer(target: self, action: #selector(self.handelpinch(_:)))
        
     
        self.iv1.addGestureRecognizer(pinch)*/
        
        
        
        
        //5  Pan Gesture
        
        /*let pan: UIPanGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(self.handelpan(_:)))
        
     
        self.iv1.addGestureRecognizer(pan)*/
         
         
         // 6 swipe gesture
        let rightswipe: UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(self.handelswipe(_:)))
        
        rightswipe.direction = .right
        
        self.iv1.addGestureRecognizer(rightswipe)
        
        
        
        let upswipe: UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(self.handelswipe(_:)))
        
        upswipe.direction = .up
        
        self.iv1.addGestureRecognizer(upswipe)
        
        
        let downswipe: UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(self.handelswipe(_:)))
        
        downswipe.direction = .down
        
        self.iv1.addGestureRecognizer(downswipe)
        
        
        let leftswipe: UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(self.handelswipe(_:)))
        
        leftswipe.direction = .left
        
        self.iv1.addGestureRecognizer(leftswipe)
        
    }
    
    
    
    
    
    
    //1. tap gesture Implentation
   /* @objc func handleTap(_ sender: UITapGestureRecognizer? = nil) {
        print("view is tapped")
        self.view.backgroundColor = .yellow
    }
    
    //2 Long Presse
    @objc func handlongPressed(_ sender: UITapGestureRecognizer? = nil) {
        print("view is detected")
        self.view.backgroundColor = .yellow
    }*/
    
    
    //rotation gesture
    /*@objc func handelrotation(_ sender: UIRotationGestureRecognizer? = nil) {
        print("view is rotation")
        sender?.view?.transform = (sender?.view!.transform.rotated(by: sender!.rotation))!
        
        sender!.rotation = 0
        
        print(sender?.view?.transform)
        
        
    }*/
    
    //pinch gesture
    
   /* @objc func handelpinch(_ sender: UIPinchGestureRecognizer? = nil) {
        print("view is pinch")
        sender?.view?.transform = (sender?.view?.transform.scaledBy(x: sender!.scale, y: sender!.scale))!
        
        sender?.scale = 1.0
        
    
        
        
    }*/
    

    //pan gesture
    
  /*  @objc func handelpan(_ sender: UIPanGestureRecognizer? = nil) {
        print("view is pan")
        
        let translation = sender?.translation(in: self.view)
  
        sender?.view!.center =  CGPoint(x: (sender?.view!.center.x)! + translation!.x,y: (sender?.view!.center.y)! + translation!.y)
        
        sender?.setTranslation(CGPoint.zero, in: self.view)
        
    }*/
    
         
    //6 swipe gesture
    @objc func handelswipe(_ sender: UISwipeGestureRecognizer){
        
        
        switch sender.direction {
        case .right:
            print("right swipe")
            self.view.backgroundColor = .red
            
        case .left:
            print("left swipe")
            self.view.backgroundColor = .brown
            
        case .up:
            print("up swipe")
            self.view.backgroundColor = .green
            
        case .down:
            print("down swipe")
            self.view.backgroundColor = .yellow
            
        default:
            break
        }
    }

}
         
