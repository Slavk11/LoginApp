//
//  UserProfileViewController.swift
//  LoginApp
//
//  Created by Сазонов Станислав on 01.04.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet var greetingLabel: UILabel!
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        greetingLabel.text = """
            Welcome, \(user.login)!
            My name is \(user.person.fullName).
            """
    }
}

