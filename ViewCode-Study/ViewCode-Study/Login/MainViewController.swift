//
//  MainViewController.swift
//  ViewCode-Study
//
//  Created by Sillas Santos on 20/06/23.
//

import UIKit

class MainViewController: UIViewController {

    lazy var backButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Login", for: .normal)
        button.layer.cornerRadius = 7.5
        button.layer.borderColor = UIColor.systemPink.cgColor
        button.backgroundColor = UIColor.white
        button.addTarget(self, action: #selector(tappedButton), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        view.addSubview(backButton)
        setupConstraints()
    }
    
    @objc func tappedButton() {
        navigationController?.popViewController(animated: true)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            backButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            backButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            backButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
 
}
