//
//  ContentView.swift
//  HabitGrow
//
//  Created by Praveen Kumar Vedanti on 6/25/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    var body: some View {
        
        TabView {
            Tab {
                DashboardView()
            } label: {
                VStack {
                    Image(systemName: "chart.bar")
                    Text("dashboard")
                }
            }
            
            Tab {
                HabitView()
            } label: {
                VStack {
                    Image(systemName: "figure.run")
                    Text("habit")
                }
            }
            
            Tab {
                JournalView()
            } label: {
                VStack {
                    Image(systemName: "square.and.pencil")
                        .foregroundStyle(Color.orange)
                    Text("journal")
                }
            }
            
            Tab {
                SettingsView()
            } label: {
                VStack {
                    Image(systemName: "gear")
                    Text("settings")
                }
            }
        }
        .tint(Color.teal)
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
