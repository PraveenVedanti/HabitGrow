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
        VStack(alignment: .leading, spacing: 16.0) {
            ScrollView(.horizontal, showsIndicators: false) {
                chipView
            }
            
            List {
                ListStandardRow(title: "Sleep", image: Image(systemName: "bed.double"))
                ListStandardRow(title: "Steps", image: Image(systemName: "figure.walk"))
                ListStandardRow(title: "Cycling", image: Image(systemName: "bicycle"))
                ListStandardRow(title: "Read a book", image: Image(systemName: "book"))
            }
            .listStyle(.plain)
        }
        .padding(.vertical, 16.0)
        .padding(.horizontal, 16.0)
    }
    
    private var chipView: some View {
        HStack(spacing: 16.0) {
            Chip(title: "Favourites", image: Image(systemName: "heart"))
            Chip(title: "Fitness", image: Image(systemName: "figure.walk"))
            Chip(title: "Reading & Journal", image: Image(systemName: "book"))
        }
    }
}
