//
//  OnboardingView.swift
//  Challenge2-BusinessCard
//
//  Created by 더스틴 on 4/22/26.
//

import SwiftData
import SwiftUI

struct OnboardingView: View {
    
    @Environment(\.modelContext) private var context
    @ObservedObject private var viewModel = OnboardingViewModel()
    @FocusState private var isTextFieldFocused: Bool
    @Binding var isPresented: Bool
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 20) {
                Spacer()
                    .frame(height: 44)
                
                OnboardingProgressBar(step: $viewModel.step)
                
                Text(viewModel.currentGuide)
                    .font(.title.bold())
                
                if viewModel.isLastStep {
                    Spacer()
                        .frame(height: 44)
                }
                viewModel.inputInformationView
                    .padding(.vertical)
                    .focused($isTextFieldFocused)
                
                Spacer()
                
                Button {
                    if viewModel.stepUp() {
                        context.insert(
                            BusinessCard(
                                nickname: viewModel.nickname,
                                name: viewModel.name,
                                phoneNumber: viewModel.phoneNumber,
                                field: viewModel.field.name,
                                color: .init(color: viewModel.cardColor),
                                origin: CardOrigin.mine.rawValue
                            )
                        )
                    }
                } label: {
                    Text(viewModel.step.buttonName)
                        .font(.title3.bold())
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 16)
                        .background(viewModel.isValid ? Color.blue : Color(.systemGray4))
                        .cornerRadius(12)
                }
                .disabled(!viewModel.isValid)
            }
            .padding()
            .toolbar {
                if viewModel.backable {
                    ToolbarItem(placement: .topBarLeading) {
                        Button {
                            viewModel.stepDown()
                        } label: {
                            Image(systemName: "chevron.backward")
                        }
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        isPresented = false
                    } label: {
                        Image(systemName: "xmark")
                    }
                }
            }
            .onAppear {
                isTextFieldFocused = true
            }
            .onChange(of: viewModel.step) { _, _ in
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                    if viewModel.isNeedTextFieldStep {
                        isTextFieldFocused = true
                    } else {
                        isTextFieldFocused = false
                    }
                }
            }
        }
    }
}

#Preview {
    OnboardingView(isPresented: .constant(true))
}
