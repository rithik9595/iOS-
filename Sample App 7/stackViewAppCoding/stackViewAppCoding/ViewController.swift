//
//  ViewController.swift
//  stackViewAppCoding
//
//  Created by FCI on 02/12/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    //Image View
    let imageView = UIImageView()
    imageView.backgroundColor = UIColor.yellow
    imageView.heightAnchor.constraint(equalToConstant: 120.0).isActive = true
    imageView.widthAnchor.constraint(equalToConstant: 120.0).isActive = true
    imageView.image = UIImage(systemName: "pencil.circle")
    
    
    //Text Label
    let textLabel = UILabel()
    textLabel.backgroundColor = UIColor.yellow
    textLabel.widthAnchor.constraint(equalToConstant: 120).isActive = true
    textLabel.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
    textLabel.text = "Hi world"
    textLabel.textAlignment = .center
    
    //stack View
    let stackView = UIStackView()
    stackView.axis = .vertical
    stackView.distribution = .equalSpacing
    stackView.alignment = .center
    stackView.spacing 
    

}

