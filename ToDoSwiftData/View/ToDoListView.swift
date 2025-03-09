//
//  ToDoListView.swift
//  ToDoSwiftData
//
//  Created by Ömer on 9.03.2025.
//

import SwiftUI
import SwiftData

struct ToDoListView: View {
    
    let toDos : [ToDo]
    @Environment(\.modelContext) private var context
    
    var body: some View {
        List {
            ForEach(toDos) { toDo in
                HStack {
                    Text(toDo.name)
                    Spacer()
                    Text(toDo.priority.description)
                }
            }.onDelete(perform: { indexSet in
                indexSet.forEach { index in
                    let toDo = toDos[index]
                    context.delete(toDo)
                    
                    do {
                        try context.save()
                    } catch {
                        print("Error saving context: \(error)")
                    }
                    
                }
            })
        }
    }
}

#Preview {
    ToDoListView(toDos: [ToDo(name: "Test", priority: 123)]).modelContainer(for:[ToDo.self])
}
