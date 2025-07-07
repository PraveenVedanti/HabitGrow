//
//  Hobby.swift
//  HabitGrow
//
//  Created by Praveen Kumar Vedanti on 6/26/25.
//

import Foundation

public struct Habit: Codable, Identifiable {

    public let id: Int
    let name: String
    let imageName: String
    let color: String
    
    public init(
        id: Int,
        name: String,
        imageName: String,
        color: String
    ) {
        self.id = id
        self.name = name
        self.imageName = imageName
        self.color = color
    }
}
