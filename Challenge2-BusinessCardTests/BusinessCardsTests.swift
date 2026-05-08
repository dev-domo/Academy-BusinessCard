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
        guard let nickname1 = Nickname(string: "Dustin"),
              let name1 = Name(string: "허승준"),
              let phoneNumber1 = PhoneNumber(string: "01012345678"),
              let cardColor1 = CardColor(color: .black)
        else {
            return
        }
        
        guard let nickname2 = Nickname(string: "Abcd"),
              let name2 = Name(string: "가나다"),
              let phoneNumber2 = PhoneNumber(string: "01011112222"),
              let cardColor2 = CardColor(color: .blue)
        else {
            return
        }
        
        self.cards = BusinessCards(
            cards: [
                BusinessCard(
                    nickname: nickname1,
                    name: name1,
                    phoneNumber: phoneNumber1,
                    field: UserDomain(field: .tech),
                    cardColor: cardColor1,
                    origin: .mine
                ),
                BusinessCard(
                    nickname: nickname2,
                    name: name2,
                    phoneNumber: phoneNumber2,
                    field: UserDomain(field: .design),
                    cardColor: cardColor2,
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
    
    @Test("닉네임 기반 명함 검색", arguments: [("Ab", "Abcd"), ("Ef", nil)])
    func 닉네임으로_명함을_검색할_수_있다(target: (searchName: String, nickname: String?)) {
        guard let cards else { return }
        
        let result = cards.findByNickname(target.searchName)
        
        #expect(result.first?.nickname == target.nickname)
    }
}
