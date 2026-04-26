//
//  SkeletonCardBackgroundView.swift
//  Challenge2-BusinessCard
//
//  Created by 더스틴 on 4/22/26.
//

import SwiftUI

struct SkeletonCardBackgroundView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(
                LinearGradient(
                    colors: [Color.gray.opacity(0.1), Color.gray.opacity(0.23)],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
            )
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.gray.opacity(0.3), lineWidth: 0.5)
            )
            .frame(width: 315, height: 175)
            .shadow(color: .black.opacity(0.1), radius: 15, x: 0, y: 10)
    }
}
