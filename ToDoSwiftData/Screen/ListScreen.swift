//
//  ListScreen.swift
//  ToDoSwiftData
//
//  Created by Ömer on 20.04.2026.
//

import SwiftUI
import SwiftData

struct ListScreen: View {
    
    @Query(sort: \ToDo.name, order: .forward) private var toDos: [ToDo]
    @State private var isPresented: Bool = false
    
    var body: some View {
        NavigationStack {
            ToDoListView(toDos: toDos)
                .toolbar(content: {
                    ToolbarItem(placement: .topBarTrailing)
                    {
                        Button("Add ToDo"){
                            isPresented = true
                        }
                    }
                }).sheet(isPresented: $isPresented) {
                    NavigationStack{
                        AddToDoScreen()
                    }
                }
        }
    }
}

#Preview {
    ListScreen()
}
