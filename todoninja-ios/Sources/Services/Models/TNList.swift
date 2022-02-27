//
//  TNList.swift
//  todoninja-ios
//
//  Created by Jonas Richard Richter on 27.02.22.
//  Copyright © 2022 Todoninja. All rights reserved.
//

import Foundation

// Version: 1.1.0
// https://raw.githubusercontent.com/todoninja/todoninja-contracts/main/schemas/list-v1-1-0.json
struct TNList: Identifiable, Codable {
    var id: UUID
    var name: String
    var icon: String?
    var createdAt: Date
    var updatedAt: Date
}
