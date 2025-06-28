//
//  Chip.swift
//  HabitGrow
//
//  Created by Praveen Kumar Vedanti on 6/26/25.
//

import SwiftUI

public struct Chip: View {
    
    private let title: String
    private let imageName: String?
    private let isSelected: Bool
    private let onTap: () -> Void
    
    @State private var shoud = false
    @State private var selectedCategory: HabitCategory
    
    public init(
        title: String,
        imageName: String? = nil,
        selectedCategory: HabitCategory,
        isSelected: Bool,
        onTap: @escaping () -> Void
    ) {
        self.title = title
        self.imageName = imageName
        self.selectedCategory = selectedCategory
        self.isSelected = isSelected
        self.onTap = onTap
    }
    
    public var body: some View {
        HStack(spacing: 8.0) {
            if let imageName {
                Image(systemName: imageName)
            }
            
            Text(title)
                .font(Font.subheadline)
                .fontWeight(.regular)
        }
        .onTapGesture {
            onTap()
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 16.0)
                .stroke(Color.gray, lineWidth: 1)
                .fill(isSelected ? Color.gray.opacity(0.4) : Color.clear)
        )
    }
}
