//
//  HobbyCategory.swift
//  HabitGrow
//
//  Created by Praveen Kumar Vedanti on 6/26/25.
//

import Foundation

struct HobbyCategory {
    
    private let id: String
    private let name: String
    private let hobbies: [Hobby]
    
    public init(
        id: String,
        name: String,
        hobbies: [Hobby]
    ) {
        self.id = id
        self.name = name
        self.hobbies = hobbies
    }
}
