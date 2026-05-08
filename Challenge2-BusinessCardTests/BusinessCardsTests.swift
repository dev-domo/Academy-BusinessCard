//
//  BusinessCardsTests.swift
//  Challenge2-BusinessCard
//
//  Created by 더스틴 on 4/29/26.
//

import SwiftUI
import Testing
@testable import Challenge2_BusinessCard

struct BusinessCardsTests {
    
    var cards: BusinessCards?
    
    init() {
        guard let nickname = Nickname(string: "Dustin"),
              let name = Name(string: "허승준"),
              let phoneNumber = PhoneNumber(string: "01012345678"),
              let cardColor = CardColor(color: .black)
        else {
            return
        }
        
        guard let nickname = Nickname(string: "Abcd"),
              let name = Name(string: "가나다"),
              let phoneNumber = PhoneNumber(string: "01011112222"),
              let cardColor = CardColor(color: .blue)
        else {
            return
        }
        
        self.cards = BusinessCards(
            cards: [
                BusinessCard(
                    nickname: nickname,
                    name: name,
                    phoneNumber: phoneNumber,
                    field: UserDomain(field: .tech),
                    cardColor: cardColor,
                    origin: .mine
                ),
                BusinessCard(
                    nickname: nickname,
                    name: name,
                    phoneNumber: phoneNumber,
                    field: UserDomain(field: .design),
                    cardColor: cardColor,
                    origin: .shared
                )
            ]
        )
    }
    
    @Test
    func 인덱스_기반으로_명함을_삭제할_수_있다() {
        guard let cards else { return }
        
        let isDeleted = cards.deleteCard(at: 0)
        
        #expect(isDeleted.nickname == "Abcd")
        #expect(isDeleted.name == "가나다")
        #expect(isDeleted.phoneNumber == "010 1111 2222")
        #expect(isDeleted.field == Field.design.name)
        #expect(isDeleted.origin == CardOrigin.shared.rawValue)
    }
}
