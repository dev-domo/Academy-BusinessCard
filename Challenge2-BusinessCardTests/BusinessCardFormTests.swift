//
//  BusinessCardFormTests.swift
//  Challenge2-BusinessCard
//
//  Created by 더스틴 on 4/26/26.
//

import Testing
@testable import Challenge2_BusinessCard

struct BusinessCardFormTests {
    
    @Test
    func 닉네임이_없으면_명함은_생성되지_않는다() {
        let form = BusinessCardForm()
        
        #expect(throws: BusinessCardForm.BuildError.missingNickname) {
            try form.build()
        }
    }
}
