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
}
