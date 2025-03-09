//
//  ToDo.swift
//  ToDoSwiftData
//
//  Created by Ömer on 9.03.2025.
//

import Foundation
import SwiftData


@Model
final class ToDo {
    var name: String
    var priority: Int
    
    init(name: String, priority: Int) {
        self.name = name
        self.priority = priority
    }
}
