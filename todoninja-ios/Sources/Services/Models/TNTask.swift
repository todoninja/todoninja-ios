//
//  TNTask.swift
//  todoninja-ios
//
//  Created by Jonas Richard Richter on 27.02.22.
//  Copyright © 2022 Todoninja. All rights reserved.
//

import Foundation

// Version: 1.0.0
// https://raw.githubusercontent.com/todoninja/todoninja-contracts/main/schemas/task-v1-0-0.json
struct TNTask: Identifiable, Codable {
    var id: UUID
    var listId: UUID?
    var title: String
    var doneAt: Date?
    var postponedUntil: Date?
    var deadlineAt: Date?
    var createdAt: Date
    var updatedAt: Date
}
