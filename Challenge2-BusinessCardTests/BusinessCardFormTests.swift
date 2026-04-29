//
//  BusinessCardFormTests.swift
//  Challenge2-BusinessCard
//
//  Created by 더스틴 on 4/26/26.
//

import SwiftUI
import Testing
@testable import Challenge2_BusinessCard

struct BusinessCardFormTests {
    
    @Test
    func 닉네임이_없으면_명함은_생성되지_않는다() {
        let form = BusinessCardForm()
        
        let result = form.build()
        
        #expect(result == nil)
    }
    
    @Test
    func 이름이_없으면_명함은_생성되지_않는다() {
        var form = BusinessCardForm()
        form.nickname = Nickname(string: "Dustin")
        
        let result = form.build()
        
        #expect(result == nil)
    }
    
    @Test
    func 전화번호가_없으면_명함은_생성되지_않는다() {
        var form = BusinessCardForm()
        form.nickname = Nickname(string: "Dustin")
        form.name = Name(string: "가나다")
        
        let result = form.build()
        
        #expect(result == nil)
    }
    
    @Test
    func 도메인이_없으면_명함은_생성되지_않는다() {
        var form = BusinessCardForm()
        form.nickname = Nickname(string: "Dustin")
        form.name = Name(string: "가나다")
        form.phoneNumber = PhoneNumber(string: "01012345678")
        
        let result = form.build()
        
        #expect(result == nil)
    }
    
    @Test
    func 명함_색상이_없으면_명함은_생성되지_않는다() {
        var form = BusinessCardForm()
        form.nickname = Nickname(string: "Dustin")
        form.name = Name(string: "가나다")
        form.phoneNumber = PhoneNumber(string: "01012345678")
        form.domain = UserDomain(field: .tech)
        
        let result = form.build()
        
        #expect(result == nil)
    }
    
    @Test
    func 닉네임_이름_전화번호_도메인_명함색상이_모두_입력되어야_명함을_생성할_수_있다() {
        var form = BusinessCardForm()
        form.nickname = Nickname(string: "Dustin")
        form.name = Name(string: "가나다")
        form.phoneNumber = PhoneNumber(string: "01012345678")
        form.domain = UserDomain(field: .tech)
        form.cardColor = CardColor(color: .black)
        
        let result = form.build()
        
        #expect(result != nil)
    }
}
