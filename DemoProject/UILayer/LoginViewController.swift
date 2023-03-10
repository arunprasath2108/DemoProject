//
//  LoginViewController.swift
//  DemoProject
//
//  Created by arun-pt6232 on 09/03/23.
//

import UIKit

class LoginViewController: UIViewController {

    // divide the whole view into two,
    // first half - topImageContainer
    lazy var topImageContainer = UIView()
    
    lazy var userNameTextField: UITextField = {
        let textField = UITextField(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
        textField.backgroundColor = .systemGray5
        textField.borderStyle = .roundedRect
        textField.placeholder = " User name or Email ID"
        
        return textField
    }()
    
    lazy var passwordTextField: UITextField = {
        let passwordTextField = UITextField(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
        passwordTextField.backgroundColor = .systemGray6
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.placeholder = " Confirm your password"
        
        return passwordTextField
    }()
    
    lazy var loginButton: UIButton = {
        let loginButton = UIButton()
        loginButton.setTitle("Login", for: .normal)
        loginButton.backgroundColor = .systemRed
        loginButton.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
        loginButton.layer.cornerRadius = 5
        
        return loginButton
    }()
    
    lazy var label: UILabel = {
        let label = UILabel()
        label.text = "Don't have an account?"
        label.font = .systemFont(ofSize: 10, weight: .semibold)

        return label
    }()
    
    lazy var signUpLabel: UILabel = {
        let signUpLabel = UILabel()
        signUpLabel.text = "SignUp"
        signUpLabel.textColor = .systemIndigo
        signUpLabel.font = .systemFont(ofSize: 10, weight: .bold)
        
        return signUpLabel
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemTeal
        configureUI()
    }
    
    func configureUI() {
        configureHalfContainerView()
        configureUserNameTextField()
        configurePasswordTextField()
        configureLoginButton()
        configureLabel()
        configureSignInButton()
    }
    
    func configureHalfContainerView() {
        view.addSubview(topImageContainer)
        topImageContainer.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            topImageContainer.topAnchor.constraint(equalTo: view.topAnchor),
            topImageContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            topImageContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            topImageContainer.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5),
        ])
    }
    
    func configureUserNameTextField() {
        view.addSubview(userNameTextField)
        userNameTextField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            userNameTextField.topAnchor.constraint(equalTo: topImageContainer.bottomAnchor, constant: -10),
            userNameTextField.widthAnchor.constraint(equalToConstant: 250),
            userNameTextField.heightAnchor.constraint(equalToConstant: 50),
            userNameTextField.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
        ])
    }
    
    func configurePasswordTextField() {
        view.addSubview(passwordTextField)
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            passwordTextField.topAnchor.constraint(equalTo: userNameTextField.bottomAnchor, constant: 10),
            passwordTextField.widthAnchor.constraint(equalToConstant: 250),
            passwordTextField.heightAnchor.constraint(equalToConstant: 50),
            passwordTextField.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
        ])
    }
    
    func configureLoginButton() {
        view.addSubview(loginButton)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 10),
            loginButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            loginButton.widthAnchor.constraint(equalToConstant: 80),
            loginButton.heightAnchor.constraint(equalToConstant: 35)
        ])
        
    }
    
    func configureLabel() {
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: passwordTextField.leadingAnchor, constant: 40),
            label.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 5)
        ])
    }

    func configureSignInButton() {
        view.addSubview(signUpLabel)
        signUpLabel.translatesAutoresizingMaskIntoConstraints = false
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(didSignUpLabelTapped))
        signUpLabel.isUserInteractionEnabled = true
        signUpLabel.addGestureRecognizer(tapGesture)
        
        NSLayoutConstraint.activate([
            signUpLabel.leadingAnchor.constraint(equalTo: label.trailingAnchor, constant: 5),
            signUpLabel.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 5)
        ])
    }
    
    @objc func didSignUpLabelTapped() {
        
        let signUpVC = SignUpViewController()
        signUpVC.modalPresentationStyle = .fullScreen
        present(signUpVC, animated: true)
    }

    
}
