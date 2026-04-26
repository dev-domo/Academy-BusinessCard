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
    
    var placeHolder: String? {
        switch self {
        case .first:
            "영문 닉네임"
        case .second:
            "이름"
        case .third:
            "전화번호(- 없이 숫자만 입력)"
        case .fourth:
            "도메인"
        case .fifth:
            nil
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
    
    private func getNewStep(to move: Int) -> Self? {
        Self(rawValue: self.rawValue + move)
    }
}
