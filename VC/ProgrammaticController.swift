//
//  ProgrammaticController.swift
//  NewsApp
//
//  Created by Shamkhal Imanov on 06.09.24.
//

import UIKit

class ProgrammaticController: UIViewController {
    
    private let currentPassword: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Current Password"
        textField.isSecureTextEntry = true
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        return textField
    }()
    
    private let newPassword: UITextField = {
        let textField = UITextField()
        textField.placeholder = "New Password"
        textField.isSecureTextEntry = true
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        return textField
    }()
    
    private let repeatNewPassword: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Repeat New Password"
        textField.isSecureTextEntry = true
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        return textField
    }()
    
    private let changePasswordButton: UIButton = {
        let button = UIButton()
        button.setTitle("Change Password", for: .normal)
        button.backgroundColor = .red
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 12
        return button
    }()

    
    let userData = UserData()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        setupLayout()
        
    }
    private func setupLayout() {
        view.addSubview(currentPassword)
        view.addSubview(newPassword)
        view.addSubview(repeatNewPassword)
        view.addSubview(changePasswordButton)
        
        
        currentPassword.translatesAutoresizingMaskIntoConstraints = false
        newPassword.translatesAutoresizingMaskIntoConstraints = false
        repeatNewPassword.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            currentPassword.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            currentPassword.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            currentPassword.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            currentPassword.heightAnchor.constraint(equalToConstant: 50),
            
            newPassword.topAnchor.constraint(equalTo: currentPassword.bottomAnchor, constant: 20),
            newPassword.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            newPassword.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            newPassword.heightAnchor.constraint(equalToConstant: 50),
            
            repeatNewPassword.topAnchor.constraint(equalTo: newPassword.bottomAnchor, constant: 20),
            repeatNewPassword.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            repeatNewPassword.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            repeatNewPassword.heightAnchor.constraint(equalToConstant: 50),
            
            changePasswordButton.topAnchor.constraint(equalTo: repeatNewPassword.bottomAnchor, constant: 20),
            changePasswordButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            changePasswordButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            changePasswordButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        changePasswordButton.addTarget(self, action: #selector(changePasswordButtonTapped), for: .touchUpInside)
    }
    
    private func successAction() {
        let alert = UIAlertController(title: "", message: "Password changed successfully", preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default)
        alert.view.tintColor = UIColor(named: "firstColor")
        alert.addAction(ok)
        present(alert, animated: true)
    }
    
    @objc private func changePasswordButtonTapped() {
        successAction()
    }
}
