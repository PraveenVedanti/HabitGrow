//
//  Hobby.swift
//  HabitGrow
//
//  Created by Praveen Kumar Vedanti on 6/26/25.
//

import Foundation

public struct Habit {

    let id: String
    let name: String
    let categories: [HabitCategory]
    
    public init(
        id: String,
        name: String,
        categories: [HabitCategory]
    ) {
        self.id = id
        self.name = name
        self.categories = categories
    }
}
