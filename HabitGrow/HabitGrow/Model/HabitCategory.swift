//
//  HobbyCategory.swift
//  HabitGrow
//
//  Created by Praveen Kumar Vedanti on 6/26/25.
//

import Foundation

public struct HabitCategory {
    
    let id: String
    let name: String
    let habits: [Habit]
    
    public init(
        id: String,
        name: String,
        habits: [Habit]
    ) {
        self.id = id
        self.name = name
        self.habits = habits
    }
}
