//
//  LoginViewController.swift
//  ViewCode-Study
//
//  Created by Sillas Santos on 20/06/23.
//

import UIKit

class LoginViewController: UIViewController {

    private var loginScreen: LoginScreen?
    
    override func loadView() {
        loginScreen = LoginScreen()
        view = loginScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginScreen?.delegate(delegate: self)
    }
    
}

extension LoginViewController: LoginScreenProtocol {
    func loginButton() {
        var vc = MainViewController()
        navigationController?.pushViewController(vc, animated: true)
        print("Chegou aqui")
    }
}
