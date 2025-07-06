//
//  HabitDetailView.swift
//  HabitGrow
//
//  Created by Praveen Kumar Vedanti on 7/6/25.
//

import SwiftUI

struct HabitDetailView: View {
    let habit: Habit

    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: habit.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)

            Text(habit.name)
                .font(.largeTitle)
        }
        .navigationTitle(habit.name)
        .padding()
    }
}
