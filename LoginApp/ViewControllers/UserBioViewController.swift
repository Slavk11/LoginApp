//
//  UserBioViewController.swift
//  LoginApp
//
//  Created by Сазонов Станислав on 08.04.2023.
//

import UIKit

final class UserBioViewController: UIViewController {
    
    @IBOutlet var userBioTextView: UITextView!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userBioTextView.text = user.person.bio
        userBioTextView.backgroundColor = .clear
        userBioTextView.textColor = .white
        title = "\(user.person.fullName)"
        
        view.addVerticalGradientLayer()
    }
}
