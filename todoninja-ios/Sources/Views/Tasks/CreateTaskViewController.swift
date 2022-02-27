//
//  CreateTaskViewController.swift
//  todoninja-ios
//
//  Created by Jonas Richard Richter on 27.02.22.
//  Copyright © 2022 Todoninja. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {
    
    // MARK: - Properties
    
    var titleTextField: UITextField!
    
    // MARK: - Overrides

    override func viewDidLoad() {
        super.viewDidLoad()

        self.setupView()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.titleTextField.becomeFirstResponder()
    }
    
    // MARK: - Setup View
    
    func setupView() {
        self.view = UIView()
        self.view.backgroundColor = .systemBackground
        
        self.titleTextField = UITextField()
        self.titleTextField.borderStyle = .roundedRect
        self.titleTextField.backgroundColor = .systemGroupedBackground
        self.titleTextField.font = .systemFont(ofSize: 20)
        self.titleTextField.placeholder = "CREATE_TASK_TITLE_PLACEHOLDER".localized()
        
        self.titleTextField.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(self.titleTextField)
        
        NSLayoutConstraint.activate([
            // TitleTextField
            self.titleTextField.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.titleTextField.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 15),
            self.view.trailingAnchor.constraint(equalTo: self.titleTextField.trailingAnchor, constant: 15),
            self.titleTextField.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 40),
            self.titleTextField.heightAnchor.constraint(equalToConstant: 50)
        ])
        
    }
}
