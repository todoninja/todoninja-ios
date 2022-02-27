//
//  ListViewController.swift
//  todoninja-ios
//
//  Created by Jonas Richard Richter on 27.02.22.
//  Copyright © 2022 Todoninja. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {
    
    // MARK: - Properties
    
    var createToDoButton: UIButton!
    
    
    // MARK: - Overrides

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupView()
        self.configureNavBar()
    }
    
    // MARK: - View Setup
    
    func setupView() {
        self.view = UIView()
        self.view.backgroundColor = .systemGroupedBackground
        
        self.createToDoButton = UIButton(configuration: .filled())
        var buttonConfig = self.createToDoButton.configuration
        
        buttonConfig?.title = "LIST_CREATE_TASK".localized()
        buttonConfig?.baseBackgroundColor = UIColor(named: "AccentColor")
        buttonConfig?.cornerStyle = .capsule
        buttonConfig?.buttonSize = .large
        buttonConfig?.image = UIImage(systemName: "plus")
        buttonConfig?.imagePadding = 10.0
        
        
        self.createToDoButton.configuration = buttonConfig
        self.createToDoButton.addAction(UIAction(handler: { action in
            self.showCreateTaskAction()
        }), for: .touchUpInside)
        self.view.addSubview(self.createToDoButton)
        
        self.createToDoButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            // Button
            self.createToDoButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.view.bottomAnchor.constraint(equalTo: self.createToDoButton.bottomAnchor, constant: 40),
            self.createToDoButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10),
            self.view.trailingAnchor.constraint(equalTo: self.createToDoButton.trailingAnchor, constant: 10)
        ])
    }
    
    func configureNavBar() {
        self.navigationItem.title = "LIST_TITLE".localized()
        self.navigationItem.largeTitleDisplayMode = .always
        self.navigationItem.hidesBackButton = true
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "person.circle"), primaryAction: UIAction(handler: { action in
            self.showProfileAction()
        }))
    }
    
    // MARK: - Actions
    
    func showProfileAction() {
        let profileViewController = ProfileViewController()
        
        if let sheet = profileViewController.sheetPresentationController {
            sheet.detents = [.large()]
            sheet.prefersGrabberVisible = true
            sheet.prefersScrollingExpandsWhenScrolledToEdge = false
        }
        
        self.present(profileViewController, animated: true, completion: nil)
    }
    
    func showCreateTaskAction() {
        let createTaskView = CreateTaskViewController()
        
        if let sheet = createTaskView.sheetPresentationController {
            sheet.detents = [.medium(), .large()]
            sheet.prefersGrabberVisible = true
            sheet.prefersScrollingExpandsWhenScrolledToEdge = false
        }
        
        self.present(createTaskView, animated: true, completion: nil)
    }
    
}
