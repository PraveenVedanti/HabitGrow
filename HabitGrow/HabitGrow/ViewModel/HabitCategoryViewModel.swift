//
//  HabitCategoryViewModel.swift
//  HabitGrow
//
//  Created by Praveen Kumar Vedanti on 6/27/25.
//

import Foundation

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
}
