//
//  ViewController.swift
//  LoginApp
//
//  Created by Сазонов Станислав on 31.03.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }


    @IBAction func logInButtonTapped() {
       // guard let inputText = userNameTextField.text
        let userNamePattern = "login"
        let isUserNameValid = NSPredicate(format: "SELF MATCHES %@", userNamePattern).evaluate(with: userNameTextField)
        if !isUserNameValid {
            return
        }
    }
    
    
    @IBAction private func promptLoginButtonPressed() {
       showAlert(withTitle: "Just forgot your login? 😄", andMessage: "Your login is - login")
    }
    
    @IBAction private func promptPasswordButtonPressed() {
        showAlert(withTitle: "Is it really you?! 🥹", andMessage: "Ok... Your password is - password")
    }
    
    
    
    
     private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
         let okAction = UIAlertAction(title: "OK", style: .default)
         alert.addAction(okAction)
        present(alert, animated: true)
    }
}

