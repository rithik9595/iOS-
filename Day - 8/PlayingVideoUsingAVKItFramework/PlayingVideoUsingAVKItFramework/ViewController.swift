//
//  ViewController.swift
//  PlayingVideoUsingAVKItFramework
//
//  Created by Naga Murali Akula on 04/08/22.
//

import UIKit
import AVKit


class ViewController: UIViewController {
    
    @IBOutlet var b1: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func b1Click() {
        
        let videoURL = URL(string: "http://www.ebookfrenzy.com/ios_book/movie/movie.mov")
          
        
          
       let player = AVPlayer(url: videoURL!)
          
      let playerViewController = AVPlayerViewController()
      playerViewController.player = player
          
      self.present(playerViewController, animated: true)
      
          playerViewController.player!.play()
        
    }


}

