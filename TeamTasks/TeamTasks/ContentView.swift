//
//  ContentView.swift
//  TeamTasks
//
//  Created by Jaeden Lee on 10/7/24.
//

import SwiftUI

struct ContentView: View {
    @State private var tasks: [String] = [] // Task list
    @State private var newTask: String = "" // New task input
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    TextField("Enter a new task", text: $newTask)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button(action: {
                        addTask()
                    }) {
                        Text("Add")
                    }
                }
                .padding()
                
                List {
                    ForEach(tasks, id: \.self) { task in
                        Text(task)
                    }
                }
            }
            .navigationTitle("To-Do List") // Updated for macOS and iOS compatibility
        }
    }
    
    func addTask() {
        if !newTask.isEmpty {
            tasks.append(newTask)
            newTask = ""
        }
    }
}


