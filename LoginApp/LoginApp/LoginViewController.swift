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
    
    private var userName = "User"
    private var password = "123"
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let welcomeVC = segue.destination as? WelcomeViewController {
            welcomeVC.userName = userNameTextField.text
        }
    }
    
    @IBAction func logInTapped() {
        if userNameTextField.text == userName, passwordTextField.text == password {
            performSegue(withIdentifier: "showWelcomeVC", sender: nil)
        } else {
            showAlert(title: "Error", message: "User name or password is incorrect")
            passwordTextField.text = ""
        }
    }
    
    @IBAction func forgotUserName() {
        showAlert(title: "Oops!", message: "Your name is \(userName)")
    }
    
    
    @IBAction func forgotPassword() {
        showAlert(title: "Oops!", message: "Your password is \(password)")
    }
    
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    private func showAlert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
