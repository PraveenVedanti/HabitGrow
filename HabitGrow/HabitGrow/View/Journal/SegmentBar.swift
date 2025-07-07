//
//  SegmentBar.swift
//  HabitGrow
//
//  Created by Praveen Kumar Vedanti on 7/5/25.
//

import SwiftUI

// Mark:- Segment Item model.
struct SegmentItem: Identifiable, Equatable {
    let id: Int
    let name: String
    let imageName: String
}

// Mark:- Segment bar.
struct SegmentBar: View {
    let segments: [SegmentItem]
    @Binding var selectedID: Int

    var body: some View {
        HStack(spacing: 4) {
            ForEach(segments) { segment in
                Button(action: {
                    selectedID = segment.id
                }) {
                    HStack(spacing: 6) {
                        Image(systemName: segment.imageName)
                            .font(.body)
                        Text(segment.name)
                            .font(.subheadline)
                    }
                    .padding(.vertical, 8)
                    .padding(.horizontal, 12)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(selectedID == segment.id ? Color.teal.opacity(0.25) : Color.gray.opacity(0.1))
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(selectedID == segment.id ? Color.teal.opacity(0.25) : Color.clear, lineWidth: 1.5)
                    )
                }
                .buttonStyle(.plain)
            }
        }
        .padding(.horizontal)
    }
}
