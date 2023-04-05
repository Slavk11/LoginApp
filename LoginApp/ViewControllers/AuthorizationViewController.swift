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
  
    private let userData = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTextField.text = userData.login
        passwordTextField.text = userData.password
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let homeVC = viewController as? UserProfileViewController {
                homeVC.user = userData.login
                homeVC.personName = userData.person.personName
                homeVC.personSurName = userData.person.personSurname
            } else if let aboutMeVC = viewController as? InformationViewController {
                aboutMeVC.name = userData.person.personName
                aboutMeVC.surname = userData.person.personSurname
                aboutMeVC.company = userData.person.personCompanyName
                aboutMeVC.department = userData.person.personDepartmentName
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction private func logInButtonTapped() {
        guard userNameTextField.text == userData.login, passwordTextField.text == userData.password else {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password",
                textField: passwordTextField
            )
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    @IBAction private func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Just forgot your login?", message: "Your login is \(userData.login)")
        : showAlert(title: "Just forgot your password?", message: "Your password is \(userData.password) 😉")
    }
    
    
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}


