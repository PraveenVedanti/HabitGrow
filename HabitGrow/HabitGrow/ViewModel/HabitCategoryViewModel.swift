//
//  HabitCategoryViewModel.swift
//  HabitGrow
//
//  Created by Praveen Kumar Vedanti on 6/27/25.
//

import SwiftUI

class HabitCategoryViewModel: ObservableObject {
    
    // List of categories
    @Published var categories: [HabitCategory] = []
    
    // Selected category
    @Published var selectedCategory: HabitCategory? = nil
    
    init() {
        loadCategories()
    }
    
    func loadCategories()  {
        do {
            guard let data =  FileManager.getCategories() else {
                return 
            }
            let categories = try JSONDecoder().decode([HabitCategory].self, from: data)
            
            DispatchQueue.main.async {
                self.categories = categories
            }
            
            // Select the first category by default.
            if self.selectedCategory == nil, let first = categories.first {
                self.selectedCategory = first
            }
        } catch {
            print("Failed to get catgories: \(error)")
        }
    }
    
    func setHabitColor(color: String) -> Color {
        switch color {
        case "teal":
            return .teal
        case "orange":
            return .orange
        case "green":
            return .green
        case "blue":
            return .blue
        case "purple":
            return .purple
        case "brown":
            return .brown
        case "red":
            return .red
        case "cyan":
            return .cyan
        case "yellow":
            return .yellow
        case "mint":
            return .mint
        default:
            return .gray
        }
    }
}
