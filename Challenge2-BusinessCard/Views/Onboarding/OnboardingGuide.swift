//
//  OnboardingGuide.swift
//  Challenge2-BusinessCard
//
//  Created by 더스틴 on 5/10/26.
//

import SwiftUI

struct OnboardingGuide: View {
    
    let text: String
    
    var body: some View {
        Text(text)
            .font(.title2.bold())
    }
}
