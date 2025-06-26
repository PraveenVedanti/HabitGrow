//
//  HabitView.swift
//  HabitGrow
//
//  Created by Praveen Kumar Vedanti on 6/25/25.
//

import SwiftUI
import SwiftData

struct HabitView: View {
    var body: some View {
        
        NavigationStack {
            List {
                ListStandardRow(title: "Sleep", detail: "Routine", image: Image(systemName: "bed.double"))
                ListStandardRow(title: "Steps", detail: "Workout", image: Image(systemName: "figure.walk"))
                ListStandardRow(title: "Cycling", detail: "Workout", image: Image(systemName: "bicycle"))
                ListStandardRow(title: "Read a book", detail: "Reading & Journal", image: Image(systemName: "book"))
            }
            .navigationTitle("Most popular habits")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
