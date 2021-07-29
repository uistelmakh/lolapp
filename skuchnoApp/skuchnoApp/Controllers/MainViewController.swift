//
//  MainViewController.swift
//  skuchnoApp
//
//  Created by Sergey Stelmakh on 28.07.2021.
//

import UIKit

class MainViewController: UIViewController {
    
    var helpfualButton = UIButton()
    var notHelpfualButton = UIButton()
    var songButton = UIButton()
    var questionLabel = UILabel()
    let stackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        view.addSubview(stackView)
        createButtons()
        createLabels()
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        createConstrains()
    }
    
    //MARK: - Create Labels
    
    fileprivate func createLabels() {
        questionLabel.text = "Как будешь проводить время?"
        questionLabel.textAlignment = .center
        questionLabel.textColor = .white
        questionLabel.font = .systemFont(ofSize: 30, weight: .bold)
        questionLabel.numberOfLines = 0
//        questionLabel.adjustsFontSizeToFitWidth = true
//        questionLabel.minimumScaleFactor = 0.5
        stackView.addSubview(questionLabel)
    }
    
    //MARK: - Create Buttons
    fileprivate func createButtons() {
        createButtonHelpfual()
        createButtonNotHelpfual()
    }
    
    fileprivate func createButtonHelpfual() {
        helpfualButton.layer.backgroundColor = CGColor(red: 37.0/255.0, green: 37.0/255.0, blue: 37.0/255.0, alpha: 1.0)
        helpfualButton.setTitle("Полезно 😁", for: .normal)
        helpfualButton.setTitleColor(.white, for: .normal)
        helpfualButton.titleLabel?.font = .systemFont(ofSize: 25, weight: .bold)
        helpfualButton.layer.cornerRadius = 24
//        helpfualButton.layer.borderWidth = 3
//        helpfualButton.layer.borderColor = CGColor(red: 247.0/255.0, green: 182.0/255.0, blue: 43.0/255.0, alpha: 1.0)
        helpfualButton.addTarget(self, action: #selector(helpfualAction), for: .touchUpInside)
        stackView.addSubview(helpfualButton)
    }
    
    fileprivate func createButtonNotHelpfual() {
        notHelpfualButton.layer.backgroundColor = CGColor(red: 37.0/255.0, green: 37.0/255.0, blue: 37.0/255.0, alpha: 1.0)
        notHelpfualButton.setTitle("Бесполезно 😕", for: .normal)
        notHelpfualButton.setTitleColor(.white, for: .normal)
        notHelpfualButton.titleLabel?.font = .systemFont(ofSize: 25, weight: .bold)
        notHelpfualButton.layer.cornerRadius = 24
//        notHelpfualButton.layer.borderWidth = 3
//        notHelpfualButton.layer.borderColor = CGColor(red: 247.0/255.0, green: 182.0/255.0, blue: 43.0/255.0, alpha: 1.0)
        notHelpfualButton.addTarget(self, action: #selector(notHelpfualAction), for: .touchUpInside)
        stackView.addSubview(notHelpfualButton)
    }
    
    // actions
    
    @objc func helpfualAction() {
        let helpfualViewController = HelpfualViewController()
        navigationController?.pushViewController(helpfualViewController, animated: true)
    }
    
    @objc func notHelpfualAction() {
        let notHelpfualViewController = NotHelpfualViewController()
        navigationController?.pushViewController(notHelpfualViewController, animated: true)
    }
    //MARK: - Autolayout
    fileprivate func createConstrains() {
        helpfualButton.translatesAutoresizingMaskIntoConstraints = false
        notHelpfualButton.translatesAutoresizingMaskIntoConstraints = false
        questionLabel.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        //buttons
        helpfualButton.heightAnchor.constraint(equalToConstant: 70).isActive = true
        helpfualButton.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 0).isActive = true
        helpfualButton.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: 0).isActive = true

        notHelpfualButton.heightAnchor.constraint(equalToConstant: 70).isActive = true
        notHelpfualButton.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 0).isActive = true
        notHelpfualButton.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: 0).isActive = true
        
        //labels
        
        questionLabel.topAnchor.constraint(equalTo: stackView.topAnchor).isActive = true
        questionLabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 0).isActive = true
        questionLabel.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: 0).isActive = true
        
        // stackView
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.alignment = .center
        stackView.spacing = 40
        
        stackView.addArrangedSubview(questionLabel)
        stackView.addArrangedSubview(helpfualButton)
        stackView.addArrangedSubview(notHelpfualButton)
        
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}
