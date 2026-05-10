//
//  OnboardingStep.swift
//  Challenge2-BusinessCard
//
//  Created by 더스틴 on 4/22/26.
//

import SwiftUI

enum OnboardingStep: Int {
    case first
    case second
    case third
    case fourth
    case fifth
}

extension OnboardingStep {
    
    var guide: String {
        switch self {
        case .first:
            "영문 닉네임을 입력해주세요"
        case .second:
            "성함을 입력해주세요"
        case .third:
            "전화번호를 입력해주세요"
        case .fourth:
            "도메인을 선택해주세요"
        case .fifth:
            "명함 색상을 골라주세요"
        }
    }
    
    var buttonName: String {
        switch self {
        case .first, .second, .third, .fourth:
            "다음으로"
        case .fifth:
            "명함 생성하기"
        }
    }
    
    var previous: Self {
        getNewStep(to: -1) ?? self
    }
    
    var next: Self {
        getNewStep(to: 1) ?? self
    }
    
    var isLast: Bool {
        self == .fifth
    }
    
    func currentInput(for viewModel: OnboardingViewModel) -> String? {
        switch self {
        case .first:
            return viewModel.nickname
        case .second:
            return viewModel.name
        case .third:
            return viewModel.phoneNumber
        case .fourth, .fifth:
            return nil
        }
    }
    
    func isValid(for viewModel: OnboardingViewModel) -> Bool {
        switch self {
        case .first:
            return Nickname(string: viewModel.nickname) != nil
        case .second:
            return Name(string: viewModel.name) != nil
        case .third:
            return PhoneNumber(string: viewModel.phoneNumber) != nil
        case .fourth:
            return true
        case .fifth:
            return CardColor(color: viewModel.cardColor) != nil
        }
    }
    
    private func getNewStep(to move: Int) -> Self? {
        Self(rawValue: self.rawValue + move)
    }
}
