//
//  OnboardingView.swift
//  Challenge2-BusinessCard
//
//  Created by 더스틴 on 5/9/26.
//

import SwiftData
import SwiftUI

struct OnboardingView: View {
    
    @Environment(\.modelContext) private var context
    @StateObject var viewModel: OnboardingViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            OnboardingProgressBar(step: viewModel.step.rawValue)
            OnboardingGuide(text: viewModel.step.guide)
            OnboardingContentView(viewModel: viewModel)
                .padding(.vertical, 20)
            OnboardingNextButton(viewModel: viewModel)
        }
        .padding()
        .onAppear {
            viewModel.configure(context: context)
        }
    }
}
