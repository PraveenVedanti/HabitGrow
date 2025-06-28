//
//  ListStandardRow.swift
//  HabitGrow
//
//  Created by Praveen Kumar Vedanti on 6/25/25.
//

import SwiftUI

public struct ListStandardRow: View {
    
    private let title: String?
    private let detail: String?
    private let imageName: String?
    
    public init(
        title: String? = nil,
        detail: String? = nil,
        imageName: String? = nil,
    ) {
        self.title = title
        self.detail = detail
        self.imageName = imageName
    }
    
    public var body: some View {
        
        VStack(alignment: .leading) {
            HStack(spacing: 8.0) {
                if let imageName {
                    Image(systemName: imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                }
                
                if let title {
                    Text(title)
                        .font(Font.title3)
                        .fontWeight(.light)
                }
                
                Spacer()
                
                if let detail {
                    Text(detail)
                        .font(Font.subheadline)
                        .fontWeight(.thin)
                }
            }
        }
    }
}
