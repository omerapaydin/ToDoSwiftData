//
//  ContentView.swift
//  ToDoSwiftData
//
//  Created by Ömer on 9.03.2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name: String = ""
    @State private var priority : Int?
    
    var body: some View {
        NavigationStack {
            Form {
                TextField("Name",text: $name)
                TextField("Priority",value: $priority,format: .number)
            }.navigationTitle("Add ToDo")
                 .toolbar{
                     ToolbarItem(placement: .topBarLeading){
                         Button {
                             
                         } label: {
                             Text("Dismiss")
                         }

                     }
                     ToolbarItem(placement: .topBarTrailing){
                         Button {
                             
                         } label: {
                             Text("Save")
                         }

                     }
                 }
        }
    }
}

#Preview {
    ContentView()
}
