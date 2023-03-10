//
//  SignUpViewController.swift
//  DemoProject
//
//  Created by arun-pt6232 on 09/03/23.
//

import UIKit

class SignUpViewController: UIViewController, UITextFieldDelegate {
    
    private lazy var boxView = UIView()
    private lazy var userNameLabel = UILabel()
    private lazy var emailIdLabel = UILabel()
    private lazy var newPasswordLabel = UILabel()
    private lazy var confirmPasswordLabel = UILabel()
    private lazy var endLabel = UILabel()
    
    private var boxViewConstrainst = [NSLayoutConstraint]()
    private var userNameLabelConstraint = [NSLayoutConstraint]()
    private var userNameTextFieldConstraint = [NSLayoutConstraint]()
    private var emailIdLabelConstraint = [NSLayoutConstraint]()
    private var emailIdTextFieldConstraint = [NSLayoutConstraint]()
    private var newPasswordLabelConstraint = [NSLayoutConstraint]()
    private var newPasswordTextFieldConstraint = [NSLayoutConstraint]()
    private var confirmPasswordLabelConstraint = [NSLayoutConstraint]()
    private var confirmPasswordTextFieldConstraint = [NSLayoutConstraint]()
    private var endLabelConstraint = [NSLayoutConstraint]()
    private var loginLabelConstraint = [NSLayoutConstraint]()
    private var signUpConstraint = [NSLayoutConstraint]()
    
    
    private lazy var userNameTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .systemGray5
        textField.borderStyle = .roundedRect
        textField.placeholder = "Enter User name"
        
        return textField
    }()
    
    private lazy var emailIdTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .systemGray5
        textField.borderStyle = .roundedRect
        textField.keyboardType = .emailAddress
        textField.placeholder = "Enter Email Id"
        
        return textField
    }()
    
    private lazy var newPasswordTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .systemGray5
        textField.borderStyle = .roundedRect
        textField.placeholder = "Enter password"
        
        return textField
    }()
    
    private lazy var confirmPasswordTextField: UITextField = {
        let textField = UITextField()
        textField.backgroundColor = .systemGray5
        textField.borderStyle = .roundedRect
        textField.placeholder = "Confirm the password"
        textField.becomeFirstResponder()
        return textField
    }()
    
    private lazy var signUpButton: UIButton = {
        let signUpButton = UIButton()
        signUpButton.setTitle("Sign up", for: .normal)
        signUpButton.backgroundColor = .systemRed
        signUpButton.titleLabel?.font = .systemFont(ofSize: 18, weight: .bold)
        signUpButton.layer.cornerRadius = 5
        
        return signUpButton
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        confirmPasswordTextField.delegate = self
        configureUI()
    }
    
    private func configureUI() {
        configureBoxView()
        configureUserNameLabel()
        configureUserNameField()
        configureEmailIdLabel()
        configureEmailIdTextField()
        configureNewPasswordLabel()
        configureNewPasswordTextField()
        configureConfirmPassLabel()
        configureConfirmPassTextField()
        configureLabel()          //label -> "already have an account?"
        configureLogInLabel()
        configureSignUpButton()
    }
    
    private func configureBoxView() {
        view.addSubview(boxView)
        boxView.backgroundColor = .systemTeal
        boxView.layer.cornerRadius = 20
        boxView.translatesAutoresizingMaskIntoConstraints = false
        
        boxViewConstrainst = [
            boxView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 130),
            boxView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            boxView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            boxView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -120)
        ]
        NSLayoutConstraint.activate(boxViewConstrainst)
    }
    
    private func configureUserNameLabel() {
        userNameLabel.text = "User Name"
        userNameLabel.textColor = .systemRed
        userNameLabel.font = .systemFont(ofSize: 18, weight: .regular)
        userNameLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(userNameLabel)

        userNameLabelConstraint = [
            userNameLabel.topAnchor.constraint(equalTo: boxView.topAnchor, constant: 25),
            userNameLabel.leadingAnchor.constraint(equalTo: boxView.leadingAnchor, constant: 35)
        ]
        NSLayoutConstraint.activate(userNameLabelConstraint)
    }
    
    private func configureUserNameField() {
        view.addSubview(userNameTextField)
        userNameTextField.translatesAutoresizingMaskIntoConstraints = false
        
        userNameTextFieldConstraint = [
            userNameTextField.topAnchor.constraint(equalTo: userNameLabel.bottomAnchor, constant: 15),
            userNameTextField.centerXAnchor.constraint(equalTo: boxView.centerXAnchor),
            userNameTextField.widthAnchor.constraint(equalToConstant: 280),
            userNameTextField.heightAnchor.constraint(equalToConstant: 45)
        ]
        NSLayoutConstraint.activate(userNameTextFieldConstraint)
    }
    
    private func configureEmailIdLabel() {
        emailIdLabel.text = "Email "
        emailIdLabel.textColor = .systemRed
        emailIdLabel.font = .systemFont(ofSize: 18, weight: .regular)
        emailIdLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(emailIdLabel)

        emailIdLabelConstraint = [
            emailIdLabel.topAnchor.constraint(equalTo: userNameTextField.bottomAnchor, constant: 30),
            emailIdLabel.leadingAnchor.constraint(equalTo: boxView.leadingAnchor, constant: 35)
        ]
        NSLayoutConstraint.activate(emailIdLabelConstraint)
    }
    
    
    private func configureEmailIdTextField() {
        view.addSubview(emailIdTextField)
        emailIdTextField.translatesAutoresizingMaskIntoConstraints = false
        
        emailIdTextFieldConstraint = [
            emailIdTextField.topAnchor.constraint(equalTo: emailIdLabel.bottomAnchor, constant: 15),
            emailIdTextField.centerXAnchor.constraint(equalTo: boxView.centerXAnchor),
            emailIdTextField.widthAnchor.constraint(equalToConstant: 280),
            emailIdTextField.heightAnchor.constraint(equalToConstant: 45)
        ]
        NSLayoutConstraint.activate(emailIdTextFieldConstraint)
    }
    
    private func configureNewPasswordLabel() {
        newPasswordLabel.text = "New Password"
        newPasswordLabel.textColor = .systemRed
        newPasswordLabel.font = .systemFont(ofSize: 18, weight: .regular)
        newPasswordLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(newPasswordLabel)

        newPasswordLabelConstraint = [
            newPasswordLabel.topAnchor.constraint(equalTo: emailIdTextField.bottomAnchor, constant: 30),
            newPasswordLabel.leadingAnchor.constraint(equalTo: boxView.leadingAnchor, constant: 35)
        ]
        NSLayoutConstraint.activate(newPasswordLabelConstraint)
    }
    
    private func configureNewPasswordTextField() {
        view.addSubview(newPasswordTextField)
        newPasswordTextField.translatesAutoresizingMaskIntoConstraints = false
        
        newPasswordTextFieldConstraint = [
            newPasswordTextField.topAnchor.constraint(equalTo: newPasswordLabel.bottomAnchor, constant: 15),
            newPasswordTextField.centerXAnchor.constraint(equalTo: boxView.centerXAnchor),
            newPasswordTextField.widthAnchor.constraint(equalToConstant: 280),
            newPasswordTextField.heightAnchor.constraint(equalToConstant: 45)
        ]
        NSLayoutConstraint.activate(newPasswordTextFieldConstraint)
    }
    
    private func configureConfirmPassLabel() {
        confirmPasswordLabel.text = "Confirm Password"
        confirmPasswordLabel.textColor = .systemRed
        confirmPasswordLabel.font = .systemFont(ofSize: 18, weight: .regular)
        confirmPasswordLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(confirmPasswordLabel)

        confirmPasswordLabelConstraint = [
            confirmPasswordLabel.topAnchor.constraint(equalTo: newPasswordTextField.bottomAnchor, constant: 30),
            confirmPasswordLabel.leadingAnchor.constraint(equalTo: boxView.leadingAnchor, constant: 35)
        ]
        NSLayoutConstraint.activate(confirmPasswordLabelConstraint)
    }
    
    private func configureConfirmPassTextField() {
        view.addSubview(confirmPasswordTextField)
        confirmPasswordTextField.translatesAutoresizingMaskIntoConstraints = false
        
        confirmPasswordTextFieldConstraint = [
            confirmPasswordTextField.topAnchor.constraint(equalTo: confirmPasswordLabel.bottomAnchor, constant: 15),
            confirmPasswordTextField.centerXAnchor.constraint(equalTo: boxView.centerXAnchor),
            confirmPasswordTextField.widthAnchor.constraint(equalToConstant: 280),
            confirmPasswordTextField.heightAnchor.constraint(equalToConstant: 45)
        ]
        NSLayoutConstraint.activate(confirmPasswordTextFieldConstraint)
    }
    
    private func configureLabel() {
        endLabel.text = "already have an account?"
        endLabel.textColor = .systemBackground
        endLabel.font = .systemFont(ofSize: 12, weight: .semibold)
        view.addSubview(endLabel)
        
        endLabel.translatesAutoresizingMaskIntoConstraints = false
        
        endLabelConstraint = [
            endLabel.topAnchor.constraint(equalTo: boxView.bottomAnchor, constant: 30),
            endLabel.centerXAnchor.constraint(equalTo: boxView.centerXAnchor, constant: -30)
        ]
        NSLayoutConstraint.activate(endLabelConstraint)
    }
    
    private func configureLogInLabel() {
        let label = UILabel()
        view.addSubview(label)
        label.text = "login"
        label.textColor = .systemYellow
        label.font = .systemFont(ofSize: 15, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(didLoginLabelTapped))
        label.isUserInteractionEnabled = true
        label.addGestureRecognizer(tapGesture)
        
        loginLabelConstraint = [
            label.topAnchor.constraint(equalTo: boxView.bottomAnchor, constant: 30),
            label.leadingAnchor.constraint(equalTo: endLabel.trailingAnchor, constant: 7),
            label.centerYAnchor.constraint(equalTo: endLabel.centerYAnchor)
        ]
        NSLayoutConstraint.activate(loginLabelConstraint)
    }
    
    @objc private func didLoginLabelTapped() {
        dismiss(animated: true)
    }
    
    private func configureSignUpButton() {
        view.addSubview(signUpButton)
        signUpButton.translatesAutoresizingMaskIntoConstraints = false
        
        signUpConstraint = [
            signUpButton.topAnchor.constraint(equalTo: confirmPasswordTextField.bottomAnchor, constant: 20),
            signUpButton.centerXAnchor.constraint(equalTo: confirmPasswordTextField.safeAreaLayoutGuide.centerXAnchor),
            signUpButton.widthAnchor.constraint(equalToConstant: 80),
            signUpButton.heightAnchor.constraint(equalToConstant: 35)
        ]
        NSLayoutConstraint.activate(signUpConstraint)
    }
    
    //activating potrait constraints for iPhone
    private func activatePotraitConstraints() {
        NSLayoutConstraint.activate(boxViewConstrainst)
        NSLayoutConstraint.activate(userNameLabelConstraint)
        NSLayoutConstraint.activate(userNameTextFieldConstraint)
        NSLayoutConstraint.activate(emailIdLabelConstraint)
        NSLayoutConstraint.activate(emailIdTextFieldConstraint)
        NSLayoutConstraint.activate(newPasswordLabelConstraint)
        NSLayoutConstraint.activate(newPasswordTextFieldConstraint)
        NSLayoutConstraint.activate(confirmPasswordLabelConstraint)
        NSLayoutConstraint.activate(confirmPasswordTextFieldConstraint)
        NSLayoutConstraint.activate(signUpConstraint)
        NSLayoutConstraint.activate(endLabelConstraint)
        NSLayoutConstraint.activate(loginLabelConstraint)
    }
}

extension SignUpViewController {
    
    //it allows potrait mode only
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .portrait
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        
        if UIDevice.current.orientation == .portrait || UIDevice.current.userInterfaceIdiom == .pad {
            activatePotraitConstraints()
        }
    }
}
