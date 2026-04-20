//
//  ContentView.swift
//  ToDoSwiftData
//
//  Created by Ömer on 20.04.2026.
//

import SwiftUI
import SwiftData

struct AddToDoScreen: View {
    
    @State private var name : String = ""
    @State private var priority : Int?
   
    var body: some View {
        NavigationStack {
            Form {
                TextField("Name",text: $name)
                TextField("Priority", value: $priority,format: .number)
            }
        }
    }

   
}

#Preview {
    AddToDoScreen()
       
}
