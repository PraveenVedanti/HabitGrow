//
//  HabitView.swift
//  HabitGrow
//
//  Created by Praveen Kumar Vedanti on 6/25/25.
//

import SwiftUI
import SwiftData

struct HabitView: View {
    
   @StateObject private var categoriesViewModel = HabitCategoryViewModel()
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 24.0) {
                
                // Categories selection view
                ScrollView(.horizontal, showsIndicators: false) {
                    chipView
                }
                
                // Category description view
                if let description = categoriesViewModel.selectedCategory?.description {
                    Text(description)
                        .font(Font.title3)
                        .fontWeight(.medium)
                }
                
                habitsListView
              
            }
            .navigationTitle(LocalizedStrings.habitTitle)
            .padding()
        }
    }
    
    private var chipView: some View {
        HStack(spacing: 16.0) {
            ForEach(categoriesViewModel.categories) { category in
                Chip(
                    title: category.name,
                    imageName: category.imageName,
                    selectedCategory: category,
                    isSelected: categoriesViewModel.selectedCategory?.id == category.id
                ) {
                    categoriesViewModel.selectedCategory = category
                }
            }
        }
    }
    
    private var habitsListView: some View {
        NavigationStack {
            List(categoriesViewModel.selectedCategory?.habits ?? []) { habit  in
                NavigationLink(destination: HabitDetailView(habit: habit)) {
                    ListStandardRow(title: habit.name, imageName: habit.imageName)
                }
            }
            .listRowSpacing(12.0)
            .listStyle(.plain)
        }
    }
}
