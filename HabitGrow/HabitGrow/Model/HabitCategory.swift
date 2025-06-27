//
//  HobbyCategory.swift
//  HabitGrow
//
//  Created by Praveen Kumar Vedanti on 6/26/25.
//

import Foundation

public struct HabitCategory: Codable {
    
    let id: Int
    let name: String
    let imageName: String
    
    public init(
        id: Int,
        name: String,
        imageName: String,
    ) {
        self.id = id
        self.name = name
        self.imageName = imageName
    }
}
