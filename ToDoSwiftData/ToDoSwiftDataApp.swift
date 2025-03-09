//
//  ToDoSwiftDataApp.swift
//  ToDoSwiftData
//
//  Created by Ömer on 9.03.2025.
//

import SwiftUI

@main
struct ToDoSwiftDataApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ListScreen()
            }.modelContainer(for:[ToDo.self])
           
        }
    }
}
