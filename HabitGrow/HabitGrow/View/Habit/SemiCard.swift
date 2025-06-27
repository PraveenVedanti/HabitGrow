//
//  SemiCard.swift
//  HabitGrow
//
//  Created by Praveen Kumar Vedanti on 6/26/25.
//

import SwiftUI

public struct SemiCard: View {
    
    let title: String
    let subtitle: String?
    let image: String?
    
    public init(
        title: String,
        subtitle: String? = nil,
        image: String? = nil
    ) {
        self.title = title
        self.subtitle = subtitle
        self.image = image
    }
    
    public var body: some View {
        RoundedRectangle(cornerRadius: 16.0)
            .stroke(Color.secondary, lineWidth: 0.75)
            .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 2)
            .overlay(
                VStack(alignment: .leading, spacing: 12.0) {
                    if let image {
                        Image(systemName: image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .background(
                                Circle()
                                    .fill(Color.gray.opacity(0.25))
                                    .frame(width: 30, height: 30)
                            )
                    }
                    
                    Text(title)
                        .font(Font.subheadline)
                        .fontWeight(.regular)
                        .multilineTextAlignment(.leading)
                        .lineLimit(nil)
                    
                    if let subtitle {
                        Text(subtitle)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
                .padding()
            )
            .frame(width: 100, height: 100)
    }
}
