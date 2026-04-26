//
//  SplashView.swift
//  Challenge2-BusinessCard
//
//  Created by 더스틴 on 4/22/26.
//

import SwiftUI

struct SplashView: View {
    
    @State private var isPressed = false
    
    var body: some View {
        VStack(spacing: 30) {
            MoveOnboardingButton(isPressed: $isPressed)
            CardCreationGuideView()
        }
        .padding()
        .sheet(isPresented: $isPressed) {
            OnboardingView(isPresented: $isPressed)
                .presentationDetents([.large])
        }
    }
}

#Preview {
    SplashView()
}
