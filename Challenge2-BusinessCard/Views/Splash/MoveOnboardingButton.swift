//
//  MoveOnboardingButton.swift
//  Challenge2-BusinessCard
//
//  Created by 더스틴 on 4/22/26.
//

import SwiftUI

struct MoveOnboardingButton: View {
    
    @Binding var isPressed: Bool
    
    var body: some View {
        Button(action: {
            isPressed = true
        }) {
            ZStack(alignment: .leading) {
                SkeletonCardBackgroundView()
                SkeletonCardComponentView()
            }
        }
        .buttonStyle(PlainButtonStyle())
    }
}
