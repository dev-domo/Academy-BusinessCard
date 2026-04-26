//
//  OnboardingProgressBar.swift
//  Challenge2-BusinessCard
//
//  Created by 더스틴 on 4/22/26.
//

import SwiftUI

struct OnboardingProgressBar: View {
    
    @Binding var step: OnboardingStep
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(0..<5) { index in
                Circle()
                    .fill(index <= step.rawValue ? .blue : Color(.systemGray4))
                    .frame(width: 30, height: 30)
                    .overlay {
                        Text("\(index + 1)")
                            .font(.callout)
                            .foregroundStyle(.white)
                    }
                if index < 4 {
                    Rectangle()
                        .fill(index <= step.rawValue ? .blue : Color(.systemGray4))
                        .frame(height: 2)
                }
            }
        }
        .frame(width: 250)
    }
}

#Preview {
    OnboardingProgressBar(step: .constant(.third))
}
