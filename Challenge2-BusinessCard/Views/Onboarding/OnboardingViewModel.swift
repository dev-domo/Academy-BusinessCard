//
//  OnboardingViewModel.swift
//  Challenge2-BusinessCard
//
//  Created by 더스틴 on 5/9/26.
//

import Combine
import SwiftData
import SwiftUI

final class OnboardingViewModel: ObservableObject {
    
    private var context: ModelContext?
    @Published var step: OnboardingStep = .first
    @Published var nickname: String = ""
    @Published var name: String = ""
    @Published var phoneNumber: String = ""
    @Published var field: Field = .tech
    @Published var cardColor: Color = .black
    
    var textFieldStrokeColor: Color? {
        let currentInput = step.currentInput(for: self)
        
        guard let currentInput,
              !currentInput.isEmpty
        else {
            return .gray.opacity(0.2)
        }
        
        return isValid ? .green : .red
    }
    
    private var isValid: Bool {
        return step.isValid(for: self)
    }
    
    func configure(context: ModelContext) {
        self.context = context
    }
    
    func updateStep() {
        if step.isLast {
            if let card = createBusinessCardForm().build() {
                saveCard(card)
                return
            }
        } else {
            step = step.next
        }
    }
    
    private func createBusinessCardForm() -> BusinessCardForm {
        var form = BusinessCardForm()
        form.nickname = Nickname(string: nickname)
        form.name = Name(string: name)
        form.phoneNumber = PhoneNumber(string: phoneNumber)
        form.domain = UserDomain(field: field)
        form.cardColor = CardColor(color: cardColor)
        
        return form
    }
    
    private func saveCard(_ card: BusinessCard) {
        context?.insert(card)
    }
}
