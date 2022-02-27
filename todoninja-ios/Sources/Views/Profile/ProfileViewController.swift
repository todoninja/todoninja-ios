//
//  ProfileViewController.swift
//  todoninja-ios
//
//  Created by Jonas Richard Richter on 27.02.22.
//  Copyright © 2022 Todoninja. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    // MARK: - Properties
    
    var label: UILabel!
    
    
    // MARK: - Overrides

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view = UIView()
        self.view.backgroundColor = .systemBackground
        
        self.label = UILabel()
        self.view.addSubview(self.label)
        self.label.text = "Profile Page"
        
        self.label.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            self.label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.label.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
    }
}
