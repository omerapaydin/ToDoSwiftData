//
//  ToDoListView.swift
//  ToDoSwiftData
//
//  Created by Ömer on 20.04.2026.
//

import SwiftUI
import SwiftData

struct ToDoListView: View {
    
    let toDos : [ToDo]
   // @Environment(\.modelContext) private var context
    
    var body: some View {
        List{
            ForEach(toDos){ toDo in
                    HStack{
                    Text(toDo.name)
                    Spacer()
                    Text("\(toDo.priority)")
                }
            }
        }
    }
}

#Preview {
    ToDoListView(toDos: [ToDo(name:"Test",priority: 123)]).modelContainer(for:[ToDo.self])
}
