//
//  UserProfileViewController.swift
//  LoginApp
//
//  Created by Сазонов Станислав on 01.04.2023.
//

import UIKit

final class UserProfileViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    var user = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        greetingLabel.text = "Welcome, \(user)!"
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [
            UIColor.systemPink.cgColor,
            UIColor.systemCyan.cgColor,
        ]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 1.0)
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
}


