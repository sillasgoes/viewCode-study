//
//  MainView.swift
//  ViewCode-Study
//
//  Created by Fernando Matheus Ferreira Adomaitis Bruno on 21/06/23.
//

import UIKit


protocol MainViewControllerProtocol: AnyObject {
    func tappedButton()
}


class MainView: UIView {

    private weak var delegate: MainViewControllerProtocol?
    
    func delegate(delegate: MainViewControllerProtocol) {
        self.delegate = delegate
    }
    
    lazy var backButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Testando", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 7.5
        button.layer.borderColor = UIColor.systemPink.cgColor
        button.backgroundColor = UIColor.white
        button.addTarget(self, action: #selector(tappedButton), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .blue
        addSubview(backButton)
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            backButton.topAnchor.constraint(equalTo:safeAreaLayoutGuide.topAnchor, constant: 100),
            backButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            backButton.heightAnchor.constraint(equalToConstant: 40),
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            backButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        ])
    }
    
    @objc func tappedButton() {
        delegate?.tappedButton()
    }
    
}
