//
//  OnboardingNextButton.swift
//  Challenge2-BusinessCard
//
//  Created by 더스틴 on 5/10/26.
//

import SwiftData
import SwiftUI

struct OnboardingNextButton: View {
    
    @ObservedObject var viewModel: OnboardingViewModel
    
    var body: some View {
        Button {
            viewModel.updateStep()
        } label: {
            Text(viewModel.step.buttonName)
                .font(.title3.bold())
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 16)
                .background(Color.blue)
                .cornerRadius(12)
        }
        .padding(.top, 50)
    }
}
