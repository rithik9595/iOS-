//
//  ViewController.swift
//  stackViewCodingApp
//
//  Created by Naga Murali Akula on 03/04/24.
//

import UIKit

class ViewController: UIViewController {
    
    // var stackView1: UIStackView!
    // var label1: UILabel!
   // var label2: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = .gray
    
        self.displayStackView()
    }
    
    func displayStackView() {
        
        /*
        // Labels
          
          label1 = UILabel()
          
          label1.frame = CGRect(x: 20, y: 50, width: 200, height: 40)
          
          label1.backgroundColor = .red
          label1.textAlignment = .center
          
          label2 = UILabel()
          
          label2.frame = CGRect(x: 20, y: 100, width: 200, height: 40)
          
          label2.backgroundColor = .yellow
          label2.textAlignment = .center
        
        stackView1 = UIStackView(arrangedSubviews: [label1,label2])
        
        stackView1.frame = CGRect(x: 30, y: 150, width: 350, height: 550)
        
        stackView1.distribution = .fillEqually
        stackView1.axis = .vertical
        stackView1.backgroundColor = .systemBlue
        stackView1.spacing = 10
        
        
        self.view.addSubview(stackView1)
         
         */
        
        
        //Image View
        let imageView = UIImageView()
        imageView.backgroundColor = UIColor.yellow
        imageView.heightAnchor.constraint(equalToConstant: 120.0).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 120.0).isActive = true
        imageView.image = UIImage(systemName: "pencil.circle")

        //Text Label
        let textLabel = UILabel()
        textLabel.backgroundColor = UIColor.yellow
        textLabel.widthAnchor.constraint(equalToConstant: 150.0).isActive = true
        textLabel.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
        textLabel.text  = "Hi World"
        textLabel.textAlignment = .center

        //Stack View
        let stackView   = UIStackView()
        stackView.axis  = .vertical
        stackView.distribution  = .equalSpacing
        stackView.alignment = .center
        stackView.spacing   = 16.0

        stackView.addArrangedSubview(imageView)
        stackView.addArrangedSubview(textLabel)
        stackView.translatesAutoresizingMaskIntoConstraints = false

        self.view.addSubview(stackView)

        //Constraints
        stackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        
        
        
        
    }


}

