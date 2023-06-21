//
//  MainViewController.swift
//  ViewCode-Study
//
//  Created by Sillas Santos on 20/06/23.
//

import UIKit



class MainViewController: UIViewController {

    private var mainView: MainView?
    
    override func loadView() {
        mainView = MainView()
        view = mainView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        mainView?.delegate(delegate: self)
    }
    
}

extension MainViewController: MainViewControllerProtocol {
    func tappedButton() {
        print("back")
        navigationController?.popViewController(animated: true)
    }
}
