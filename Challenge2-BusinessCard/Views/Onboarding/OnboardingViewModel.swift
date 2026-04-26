//
//  OnboardingViewModel.swift
//  Challenge2-BusinessCard
//
//  Created by 더스틴 on 4/22/26.
//

import Combine
import SwiftData
import SwiftUI

final class OnboardingViewModel: ObservableObject {
    
    @Published var step: OnboardingStep = .first
    @Published var nickname: String = ""
    @Published var name: String = ""
    @Published var phoneNumber: String = ""
    @Published var field: Field = .tech
    @Published var cardColor: Color = .black
}

extension OnboardingViewModel {
    
    var isValid: Bool {
        switch step {
        case .first:
            !nickname.isEmpty
        case .second:
            !name.isEmpty
        case .third:
            !phoneNumber.isEmpty
        case .fourth, .fifth:
            true
        }
    }
    
    var isLastStep: Bool {
        step.isLast
    }
    
    var currentGuide: String {
        step.guide
    }
    
    var backable: Bool {
        step.rawValue >= OnboardingStep.second.rawValue
    }
    
    var isNeedTextFieldStep: Bool {
        step.rawValue <= OnboardingStep.third.rawValue
    }
    
    @ViewBuilder
    var inputInformationView: some View {
        switch step {
        case .first:
            OnboardingTextField(
                placeHolder: step.placeHolder ?? "",
                text: Binding(
                    get: { self.nickname },
                    set: { self.nickname = $0 }
                )
            )
        case .second:
            OnboardingTextField(
                placeHolder: step.placeHolder ?? "",
                text: Binding(
                    get: { self.name },
                    set: { self.name = $0 }
                )
            )
        case .third:
            OnboardingTextField(
                placeHolder: step.placeHolder ?? "",
                text: Binding(
                    get: { self.phoneNumber },
                    set: { self.phoneNumber = $0 }
                )
            )
            .keyboardType(.numberPad)
        case .fourth:
            DomainPicker(
                field: Binding(
                    get: { self.field },
                    set: { self.field = $0 }
                )
            )
        case .fifth:
            SelectCardColorView(
                card: .init(
                    nickname: nickname,
                    name: name,
                    phoneNumber: phoneNumber,
                    field: field.name
                ),
                color: Binding(
                    get: { self.cardColor },
                    set: { self.cardColor = $0 }
                )
            )
        }
    }
}

extension OnboardingViewModel {
    
    func stepUp() -> Bool {
        let beforeStep = step
        step = step.next
        
        return beforeStep == step
    }
    
    func stepDown() {
        step = step.previous
    }
}
