//
//  OnboardingTextField.swift
//  Challenge2-BusinessCard
//
//  Created by 더스틴 on 5/9/26.
//

import SwiftUI

struct OnboardingTextField: View {
    
    let placeHolder: String
    @Binding var text: String
    
    var body: some View {
        TextField(placeHolder, text: $text)
            .padding()
            .background(Color(.systemGray6))
            .cornerRadius(12)
    }
}
