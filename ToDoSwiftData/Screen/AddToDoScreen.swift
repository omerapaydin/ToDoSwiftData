//
//  ContentView.swift
//  ToDoSwiftData
//
//  Created by Ömer on 20.04.2026.
//

import SwiftUI
import SwiftData

struct AddToDoScreen: View {
    
    @Environment(\.modelContext) private var context
    @Environment(\.dismiss) private var dismiss
    
    @State private var name : String = ""
    @State private var priority : Int?
    
    private var isValid: Bool {
        !name.trimmingCharacters(in: .whitespaces).isEmpty && priority != nil
    }
    
    
   
    var body: some View {
        NavigationStack {
            Form {
                TextField("Name",text: $name)
                TextField("Priority", value: $priority,format: .number)
            }.navigationTitle("Add ToDo")
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Button(action: {
                            dismiss()
                        }) {
                            Text("Cancel")
                        }
                    }
                    ToolbarItem(placement: .topBarTrailing) {
                        Button(action: {
                           
                            let toDo = ToDo(name: name, priority: priority ?? 0)
                            do{
                                try? context.save()
                            }catch{
                                print(error.localizedDescription)
                            }
                            dismiss()
                            
                            
                        }) {
                            Text("Save")
                        }.disabled(!isValid)
                    }
                }
        }
    }

   
}

#Preview {
    AddToDoScreen()
       
}
