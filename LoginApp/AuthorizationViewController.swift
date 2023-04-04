//
//  ViewController.swift
//  LoginApp
//
//  Created by Сазонов Станислав on 31.03.2023.
//

import UIKit

final class AuthorizationViewController: UIViewController {
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let user = "Alex"
    private let password = "Password"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let userProfileVC = segue.destination as? UserProfileViewController else {return}
        userProfileVC.user = user
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction private func logInButtonTapped() {
        let inputLogin = userNameTextField.text
        let inputPassword = passwordTextField.text
        
        let userNamePattern = "Admin"
        let userPasswordPattern = "password"
        
        let isUserNameValid = NSPredicate(format: "SELF MATCHES %@", userNamePattern).evaluate(with: inputLogin)
        let isUserPasswordValid = NSPredicate(format: "SELF MATCHES %@", userPasswordPattern).evaluate(with: inputPassword)
        if !isUserNameValid || !isUserPasswordValid {
            showAlert(withTitle: "Is it really you?! 🥹", andMessage: "Login or password not correct")
        }
    }
    
    @IBAction private func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    @IBAction private func promptLoginButtonPressed() {
        showAlert(withTitle: "Just forgot your login?", andMessage: "Your login is - Admin")
    }
    
    @IBAction private func promptPasswordButtonPressed() {
        showAlert(withTitle: "Just forgot your password?", andMessage: "Ok... Your password is - password")
    }
    
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

