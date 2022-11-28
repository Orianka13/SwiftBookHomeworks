//
//  LoginViewController.swift
//  LoginApp
//
//  Created by Олеся Егорова on 28.11.2022.
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    @IBAction func logInTapped() {
        if userNameTextField.text == "User", passwordTextField.text == "123" {
            performSegue(withIdentifier: "showWelcomeVC", sender: nil)
        } else {
            showAlert(title: "Error", message: "User name or password is incorrect")
            passwordTextField.text = ""
        }
    }
    
    @IBAction func forgotUserName() {
        showAlert(title: "Oops!", message: "Your name is User")
    }
    
    
    @IBAction func forgotPassword() {
        showAlert(title: "Oops!", message: "Your password is 123")
    }
    
    private func showAlert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okAction)
        self.present(alert, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let welcomeVC = segue.destination as? WelcomeViewController {
            welcomeVC.userName = userNameTextField.text
        }
    }
    
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        guard segue.source is WelcomeViewController else { return }
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
}
