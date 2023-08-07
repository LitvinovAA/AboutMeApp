//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Alexey on 07.08.2023.
//

import UIKit

final class MainViewController: UIViewController {
    
    let userName = "Alan"
    let userPassword = "!QAZxsw2"
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.layer.cornerRadius = 7
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondVC = segue.destination as? SecondViewController
        secondVC?.greetingValue = "Welcome, \(userName)!"
    }
    @IBAction func loginButtonTaped() {
        if !(userNameTextField.text == userName && passwordTextField.text == userPassword) {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login and password",
                textField: userNameTextField
            )
       }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
        
    }
    
    @IBAction func isUserNameButton() {
        showAlert(withTitle: "Oops!", andMessage: "Your name is \(userName) 😊", textField: userNameTextField)
    }
    
    @IBAction func isPasswordButton() {
        showAlert(withTitle: "Oops!", andMessage: "Your password is \(userPassword) 😊", textField: passwordTextField)
    }
    
    private func showAlert(withTitle title: String, andMessage message: String, textField: UITextField) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    
    
}
