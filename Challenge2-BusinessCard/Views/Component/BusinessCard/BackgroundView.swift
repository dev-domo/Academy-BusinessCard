//
//  BackgroundView.swift
//  Challenge2-BusinessCard
//
//  Created by 더스틴 on 4/22/26.
//

import SwiftUI

struct BackgroundView: View {
    
    let color: Color
        
    var body: some View {
        let mixRatio = (color == .black) ? 0.4 : 0.25
        
        LinearGradient(
            gradient: Gradient(
                colors: [color, color.mix(with: .white, by: mixRatio)]
            ),
            startPoint: .top,
            endPoint: .bottom
        )
        .cornerRadius(20)
        .overlay {
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.black.opacity(0.1), lineWidth: 0.5)
        }
        .shadow(radius: 2)
    }
}
