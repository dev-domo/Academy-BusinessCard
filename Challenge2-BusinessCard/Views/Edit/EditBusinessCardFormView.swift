//
//  EditBusinessCardFormView.swift
//  AcademyBussinessCard
//
//  Created by 더스틴 on 4/22/26.
//

import SwiftUI

struct EditBusinessCardFormView: View {
    
    @Binding var nickname: String
    @Binding var name: String
    @Binding var phoneNumber: String
    @Binding var field: String
    @Binding var pickedColor: Color
    
    let card: BusinessCard?
    let colors: [Color] = [.black, .blue, .pink, .teal]
    
    var body: some View {
        Form {
            Section("개인정보") {
                TextField("닉네임", text: $nickname)
                
                TextField("이름", text: $name)
                
                TextField("전화번호", text: $phoneNumber)
                    .keyboardType(.numberPad)
            }
            .listRowBackground(Color.gray.opacity(0.1))
            
            Section("도메인") {
                Picker("도메인", selection: $field) {
                    ForEach(Field.allCases, id: \.rawValue) {
                        Text($0.name).tag($0.name)
                    }
                }
            }
            .listRowBackground(Color.gray.opacity(0.1))
            
            Section("명함 색상") {
                HStack {
                    Spacer()
                    
                    ForEach(colors, id: \.self) { color in
                        Circle()
                            .fill(color)
                            .frame(width: 35, height: 35)
                            .overlay {
                                if pickedColor == color {
                                    Circle()
                                        .stroke(Color.white, lineWidth: 3)
                                }
                            }
                            .onTapGesture {
                                pickedColor = color
                            }
                            .padding(.horizontal, 8)
                    }
                    
                    Spacer()
                }
            }
            .listRowBackground(Color.gray.opacity(0.1))
        }
        .scrollContentBackground(.hidden)
        .background(Color.white)
        .onAppear {
            if let card {
                nickname = card.nickname
                name = card.name
                phoneNumber = formatPlainNumber(card.phoneNumber)
                field = card.field
                pickedColor = card.color.toColor
            }
        }
    }
}

extension EditBusinessCardFormView {
    
    private func formatPlainNumber(_ string: String) -> String {
        return string.replacingOccurrences(of: "  ", with: "")
    }
}
