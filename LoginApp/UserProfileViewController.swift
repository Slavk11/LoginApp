//
//  UserProfileViewController.swift
//  LoginApp
//
//  Created by Сазонов Станислав on 01.04.2023.
//

import UIKit

final class UserProfileViewController: UIViewController {

    @IBOutlet var greetingMessage: UILabel!
    var message: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        greetingMessage.text = message
    }
}
