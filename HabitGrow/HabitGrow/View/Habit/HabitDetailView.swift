//
//  HabitDetailView.swift
//  HabitGrow
//
//  Created by Praveen Kumar Vedanti on 7/6/25.
//

import SwiftUI

struct HabitDetailView: View {
    let habit: Habit
    
    @State private var habitName: String = ""
    @State private var habitDescription: String = ""
    @State private var habitCategory: String = ""

    var body: some View {
        NavigationStack {
            Form {
                Section("General") {
                    TextField(habit.name, text: $habitName)
                    TextField("Description", text: $habitDescription)
                    
                    HStack {
                        TextField("Category", text: $habitCategory)
                            .textFieldStyle(.plain)
                            .autocorrectionDisabled()
                        
                        Spacer()
                        
                        Button {
                            
                        } label: {
                            Text("Details")
                                .font(.caption)
                                .foregroundColor(.blue)
                        }
                    }
                }
            }
        }
    }
}
