//
//  Hobby.swift
//  HabitGrow
//
//  Created by Praveen Kumar Vedanti on 6/26/25.
//

import Foundation

struct Hobby {

    private let id: String
    private let name: String
    private let category: HobbyCategory
    
    init(
        id: String,
        name: String,
        category: HobbyCategory
    ) {
        self.id = id
        self.name = name
        self.category = category
    }
}
