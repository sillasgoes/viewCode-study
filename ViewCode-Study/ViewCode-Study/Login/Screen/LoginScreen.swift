//
//  LoginScreen.swift
//  ViewCode-Study
//
//  Created by Sillas Santos on 20/06/23.
//

import UIKit

protocol LoginScreenProtocol: AnyObject {
    func loginButton()
}

class LoginScreen: UIView {
    
    private weak var delegate: LoginScreenProtocol?
    
    func delegate(delegate: LoginScreenProtocol) {
        self.delegate = delegate
    }
      
    lazy var logoImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(systemName: "applewatch")
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .systemPink
        return imageView
    }()
    
    lazy var emailTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.borderStyle = .roundedRect
        tf.placeholder = "Escreva seu Email"
        tf.keyboardType = .emailAddress
        tf.tintColor = .systemPink
        tf.layer.cornerRadius = 7.5
        tf.layer.borderWidth = 1
        tf.textAlignment = .center
        return tf
    }()
    
    lazy var passwordTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.borderStyle = .roundedRect
        tf.placeholder = "Escreva seu Senha"
        tf.keyboardType = .emailAddress
        tf.tintColor = .black
        tf.layer.cornerRadius = 7.5
        tf.layer.borderWidth = 1
        tf.textAlignment = .center
        tf.isSecureTextEntry = true
        return tf
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Login", for: .normal)
        button.layer.cornerRadius = 7.5
        button.layer.borderColor = UIColor.white.cgColor
        button.backgroundColor = UIColor.systemPink
        button.addTarget(self, action: #selector(tappedButton), for: .touchUpInside)
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setupView()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
       addSubview(logoImage)
       addSubview(emailTextField)
       addSubview(passwordTextField)
       addSubview(loginButton)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            logoImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 30),
            logoImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 60),
            logoImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -60),
            logoImage.heightAnchor.constraint(equalToConstant: 100),
            
            emailTextField.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 100),
            emailTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            emailTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            emailTextField.heightAnchor.constraint(equalToConstant: 40),
            
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 30),
            passwordTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            passwordTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            passwordTextField.heightAnchor.constraint(equalToConstant: 40),
            
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 30),
            loginButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 60),
            loginButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -60),
            loginButton.heightAnchor.constraint(equalToConstant: 40),
        ])
    }
    
    @objc func tappedButton() {
        delegate?.loginButton()
    }
}

