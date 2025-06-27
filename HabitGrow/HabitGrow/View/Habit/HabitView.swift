//
//  HabitView.swift
//  HabitGrow
//
//  Created by Praveen Kumar Vedanti on 6/25/25.
//

import SwiftUI
import SwiftData

struct HabitView: View {
    
    let columns = Array(repeating: GridItem(.flexible(), spacing: 8), count: 3)
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 24.0) {
                ScrollView(.horizontal, showsIndicators: false) {
                    chipView
                }
                
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVGrid(columns: columns) {
                        SemiCard(title: "Sleep", image: "bed.double")
                        SemiCard(title: "Steps", image: "figure.walk")
                        SemiCard(title: "Cycling", image: "bicycle")
                        SemiCard(title: "Read a book", image: "book")
                    }
                }
                .padding(.bottom)
            }
            .navigationTitle(LocalizedStrings.habitTitle)
            .padding()
        }
    }
    
    private var chipView: some View {
        HStack(spacing: 16.0) {
            Chip(title: "Favourites", image: Image(systemName: "heart"), color: Color.orange)
            Chip(title: "Fitness", image: Image(systemName: "figure.walk"), color: Color.green)
            Chip(title: "Reading & Journal", image: Image(systemName: "book"), color: Color.brown)
            Chip(title: "Digital wellness", image: Image(systemName: "macbook.and.iphone"), color: Color.blue)
        }
    }
    
    private func getCategoryData() {
        
    }
}

struct LocalizedStrings {
    static let habitTitle = NSLocalizedString("Habits", comment: "Habits tab item title")
}
