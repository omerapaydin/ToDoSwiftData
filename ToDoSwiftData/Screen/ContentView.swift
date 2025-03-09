//
//  ContentView.swift
//  ToDoSwiftData
//
//  Created by Ömer on 9.03.2025.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @Environment(\.modelContext) private var context
    @Environment(\.dismiss) private var dismiss
    
    @State private var name: String = ""
    @State private var priority : Int?
    
    private var isFromValid : Bool {
        !name.trimmingCharacters(in: .whitespaces).isEmpty && priority != nil
    }
    
    var body: some View {
        NavigationStack {
            Form {
                TextField("Name",text: $name)
                TextField("Priority",value: $priority,format: .number)
            }.navigationTitle("Add ToDo")
                 .toolbar{
                     ToolbarItem(placement: .topBarLeading){
                         Button {
                             dismiss()
                         } label: {
                             Text("Dismiss")
                         }

                     }
                     ToolbarItem(placement: .topBarTrailing){
                         Button {
                             
                             guard let priority = priority else {
                                 return
                             }
                             
                             let toDo = ToDo(name: name, priority: priority)
                             
                             context.insert(toDo)
                             
                             do{
                                 try context.save()
                                 
                             }catch {
                                 print(error.localizedDescription)
                             }
                             dismiss()
                             
                         } label: {
                             Text("Save")
                         }.disabled(!isFromValid)

                     }
                 }
        }
    }
}

#Preview {
    ContentView().modelContainer(for:[ToDo.self])
}
