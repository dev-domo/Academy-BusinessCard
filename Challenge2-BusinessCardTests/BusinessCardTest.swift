//
//  BusinessCardTest.swift
//  Challenge2-BusinessCard
//
//  Created by 더스틴 on 4/29/26.
//

import SwiftUI
import Testing
@testable import Challenge2_BusinessCard

struct BusinessCardTests {
    
    @Test
    func 자신의_명함정보를_수정할_수_있다() {
        guard let nickname = Nickname(string: "Abcd"),
              let name = Name(string: "가나다"),
              let phoneNumber = PhoneNumber(string: "01012345678"),
              let cardColor = CardColor(color: .black)
        else {
            return
        }
        
        let card = BusinessCard(
            nickname: nickname,
            name: name,
            phoneNumber: phoneNumber,
            field: UserDomain(field: .tech),
            cardColor: cardColor,
            origin: .mine
        )
        
        let updatedCard = card.update(
            nickname: "Abcde",
            name: "가나다라",
            phoneNumber: "01011112222",
            field: .tech,
            cardColor: .blue
        )
        
        #expect(updatedCard?.nickname == "Abcde")
        #expect(updatedCard?.name == "가나다라")
        #expect(updatedCard?.phoneNumber == "01011112222")
        #expect(updatedCard?.field == Field.tech.name)
    }
    
    @Test
    func 자신이_아닌_타인의_명함정보를_수정할_수_없다() {
        guard let nickname = Nickname(string: "Abcd"),
              let name = Name(string: "가나다"),
              let phoneNumber = PhoneNumber(string: "01012345678"),
              let cardColor = CardColor(color: .black)
        else {
            return
        }
        
        let card = BusinessCard(
            nickname: nickname,
            name: name,
            phoneNumber: phoneNumber,
            field: UserDomain(field: .tech),
            cardColor: cardColor,
            origin: .shared
        )
        
        let updatedCard = card.update(
            nickname: "Abcde",
            name: "가나다라",
            phoneNumber: "01011112222",
            field: .tech,
            cardColor: .blue
        )
        
        #expect(updatedCard == nil)
    }
}
