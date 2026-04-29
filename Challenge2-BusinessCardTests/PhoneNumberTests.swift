//
//  PhoneNumberTests.swift
//  Challenge2-BusinessCard
//
//  Created by 더스틴 on 4/26/26.
//

import Testing
@testable import Challenge2_BusinessCard

struct PhoneNumberTests {
    
    @Test
    func 전화번호가_010으로_시작하지_않는_경우_PhoneNumber_객체는_생성되지_않는다() {
        let string = "0212345678"
        
        let phoneNumber = PhoneNumber(string: string)
        
        #expect(phoneNumber == nil)
    }
    
    @Test("전화번호 유효성 테스트", arguments: ["0101234567", "010123456789"])
    func 전화번호_010_뒷자리가_8자리가_아닌_경우_PhoneNumber_객체는_생성되지_않는다(string: String) {
        let phoneNumber = PhoneNumber(string: string)
        
        #expect(phoneNumber == nil)
    }
    
    @Test
    func 전화번호가_010으로_시작하고_뒷자리가_8자리인_경우_PhoneNumber_객체가_생성된다() {
        let string = "01012345678"
        
        let phoneNumber = PhoneNumber(string: string)
        
        #expect(phoneNumber != nil)
    }
    
    @Test
    func 전화번호는_공백으로_구분된다() {
        let string = "01012345678"
        
        let phoneNumber = PhoneNumber(string: string)
        
        #expect(phoneNumber?.formatted == "010 1234 5678")
    }
}
