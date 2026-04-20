//
//  ToDo.swift
//  ToDoSwiftData
//
//  Created by Ömer on 20.04.2026.
//

import Foundation
import SwiftData

@Model
final class ToDo{
    var name: String
    var priority: Int
    init(name: String, priority: Int) {
        self.name = name
        self.priority = priority
    }
}
