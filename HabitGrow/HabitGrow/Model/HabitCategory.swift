//
//  HobbyCategory.swift
//  HabitGrow
//
//  Created by Praveen Kumar Vedanti on 6/26/25.
//

import Foundation

public struct HabitCategory: Codable, Identifiable {
    
    public let id: Int
    let name: String
    let imageName: String
    let description: String
    
    public init(
        id: Int,
        name: String,
        imageName: String,
        description: String
    ) {
        self.id = id
        self.name = name
        self.imageName = imageName
        self.description = description
    }
}
