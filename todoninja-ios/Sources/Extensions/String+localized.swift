//
//  String+localized.swift
//  todoninja-ios
//
//  Created by Jonas Richard Richter on 27.02.22.
//  Copyright © 2022 Todoninja. All rights reserved.
//

import Foundation

extension String {

    func localized(bundle: Bundle = .main, tableName: String = "Localizable") -> String {
        return NSLocalizedString(self, tableName: tableName, value: "**\(self)**", comment: "")
    }
}
