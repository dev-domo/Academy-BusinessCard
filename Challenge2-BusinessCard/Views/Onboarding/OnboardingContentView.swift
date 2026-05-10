//
//  OnboardingContentView.swift
//  Challenge2-BusinessCard
//
//  Created by 더스틴 on 5/9/26.
//

import SwiftUI

struct OnboardingContentView: View {
    
    @ObservedObject var viewModel: OnboardingViewModel
    
    var body: some View {
        switch viewModel.step {
        case .first:
            OnboardingTextField(placeHolder: "영문 닉네임", text: $viewModel.nickname)
                .overlay {
                    if let color = viewModel.textFieldStrokeColor {
                        TextFieldStroke(color: color)
                    }
                }
            
        case .second:
            OnboardingTextField(placeHolder: "한글 이름", text: $viewModel.name)
                .overlay {
                    if let color = viewModel.textFieldStrokeColor {
                        TextFieldStroke(color: color)
                    }
                }
            
        case .third:
            OnboardingTextField(placeHolder: "전화번호(- 없이 숫자만 입력하세요)", text: $viewModel.phoneNumber)
                .overlay {
                    if let color = viewModel.textFieldStrokeColor {
                        TextFieldStroke(color: color)
                    }
                }
            
        case .fourth:
            DomainPicker(field: $viewModel.field)
            
        case .fifth:
            CardColorPicker(pickedColor: $viewModel.cardColor)
        }
    }
}
