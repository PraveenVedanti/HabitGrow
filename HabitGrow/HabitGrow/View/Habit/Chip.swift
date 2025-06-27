//
//  Chip.swift
//  HabitGrow
//
//  Created by Praveen Kumar Vedanti on 6/26/25.
//

import SwiftUI

public struct Chip: View {
    
    private let title: String
    private let image: Image?
    private let color: Color?
    
    // @State private var selectedCategory: HabitCategory
    
    public init(
        title: String,
        image: Image? = nil,
        color: Color? = .clear
    ) {
        self.title = title
        self.image = image
        self.color = color
    }
    
    public var body: some View {
        HStack(spacing: 8.0) {
            image
            Text(title)
        }
        .onTapGesture {
            
        }
        .padding()
        .background(
            Capsule()
                .stroke(Color.gray, lineWidth: 1.0)
                .shadow(radius: 4.0)
        )
    }
}
