//
//  ToDoSwiftDataApp.swift
//  ToDoSwiftData
//
//  Created by Ömer on 20.04.2026.
//

import SwiftUI
import SwiftData

@main
struct ToDoSwiftDataApp: App {

    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ListScreen()
            }
        }
        .modelContainer(for: [ToDo.self])
    }
}
