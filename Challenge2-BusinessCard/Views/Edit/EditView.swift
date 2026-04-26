//
//  EditBusinessCardView.swift
//  AcademyBussinessCard
//
//  Created by 더스틴 on 4/22/26.
//

import SwiftData
import SwiftUI

struct EditView: View {
    
    private let seperator = "  "
    private let serviceExchangeIndex: Int = 3
    private let exchangeLineIndex: Int = 7
    
    let card: BusinessCard?
    
    @State private var isAlertPresented: Bool = false
    @State private var nickname: String = ""
    @State private var name: String = ""
    @State private var phoneNumber: String = ""
    @State private var field: String = ""
    @State private var pickedColor: Color = .black
    
    var body: some View {
        NavigationStack {
            VStack {
                EditBusinessCardFormView(
                    nickname: $nickname,
                    name: $name,
                    phoneNumber: $phoneNumber,
                    field: $field,
                    pickedColor: $pickedColor,
                    card: card
                )
                
                Button {
                    isAlertPresented = true
                } label: {
                    Text("수정하기")
                        .padding()
                        .frame(width: 350)
                        .foregroundColor(.white)
                        .background(.blue)
                        .cornerRadius(20)
                }
                .padding(.bottom, 40)
            }
            .navigationTitle("내 명함 수정")
            .onAppear {
                if let card {
                    nickname = card.nickname
                    name = card.name
                    phoneNumber = formatPlainNumber(card.phoneNumber)
                    field = card.field
                    pickedColor = card.color.toColor
                }
            }
            .alert("명함 수정", isPresented: $isAlertPresented) {
                Button("확인") {
                    updateBusinessCard()
                }
                Button("취소", role: .cancel) {}
            } message: {
                Text("변경 내용을 저장하시겠습니까?")
            }
        }
    }
}

extension EditView {
    
    private func formatPlainNumber(_ string: String) -> String {
        return string.replacingOccurrences(of: "  ", with: "")
    }
    
    private func formatPhoneNumber(_ string: String) -> String {
        var phoneNumber = string
        
        let firstIndex = calculateIndex(
            from: phoneNumber,
            offset: serviceExchangeIndex
        )
        let secondIndex = calculateIndex(
            from: phoneNumber,
            offset: exchangeLineIndex
        )
        
        [secondIndex, firstIndex].forEach {
            phoneNumber.insert(contentsOf: seperator, at: $0)
        }
        
        return phoneNumber
    }
    
    private func calculateIndex(
        from string: String,
        offset: Int
    ) -> String.Index {
        string.index(string.startIndex, offsetBy: offset)
    }
    
    private func updateBusinessCard() {
        if let card {
            card.nickname = nickname
            card.name = name
            card.phoneNumber = formatPhoneNumber(phoneNumber)
            card.field = field
            card.color = .init(color: pickedColor)
        }
    }
}
