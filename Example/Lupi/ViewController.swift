//
//  ViewController.swift
//  Lupi
//
//  Created by weitieda on 02/08/2020.
//  Copyright (c) 2020 weitieda. All rights reserved.
//

import UIKit
import Lupi

class ViewController: UIViewController {
    
    var videoBackgrounView: LupiVideoBackgroundView?
    
    let registerButton = UIButton(type: .system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        videoBackgrounView = try? LupiVideoBackgroundView(fileName: "beach", in: view)
        
        layoutWelcomeLabel()
        layoutRegisterButton()
    }
    
    fileprivate func layoutWelcomeLabel() {
        let welcomeLabel = UILabel()
        welcomeLabel.text = "Welcome"
        let font = UIFont(name: "AvenirNext-Bold", size: .init(60))!
        welcomeLabel.font = font
        welcomeLabel.textColor = .white
        view.addSubview(welcomeLabel)
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            welcomeLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100)
        ])
    }
    
    fileprivate func layoutRegisterButton() {
        view.addSubview(registerButton)
        registerButton.translatesAutoresizingMaskIntoConstraints = false
        registerButton.setTitle("Register", for: .normal)
        registerButton.setTitleColor(.white, for: .normal)
        registerButton.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .heavy)
        registerButton.backgroundColor = #colorLiteral(red: 0.8235294118, green: 0, blue: 0.3254901961, alpha: 1)
        registerButton.layer.cornerRadius = 10
        NSLayoutConstraint.activate([
            registerButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            registerButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            registerButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            registerButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            registerButton.heightAnchor.constraint(equalToConstant: 44)
        ])
    }
}
