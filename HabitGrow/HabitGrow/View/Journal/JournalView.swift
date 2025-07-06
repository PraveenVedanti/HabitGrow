//
//  JournalView.swift
//  HabitGrow
//
//  Created by Praveen Kumar Vedanti on 6/26/25.
//

import SwiftUI
import SwiftData

struct JournalView: View {
    
    @State private var selectedID: Int = 1
    
    private let segmentItems = [
        SegmentItem(id: 1, name: LocalizedStrings.wordsTitle, imageName: "pencil"),
        SegmentItem(id: 2, name: LocalizedStrings.voiceTitle, imageName: "waveform"),
    ]
    
    var body: some View {
        VStack(spacing: 24) {
            SegmentBar(segments: segmentItems, selectedID: $selectedID)
            
            Text("Selected: \(segmentItems.first(where: { $0.id == selectedID })?.name ?? "")")
                .padding()
            
            Spacer()
        }
        .padding(.top)
    }
}

