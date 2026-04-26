//
//  Challenge2_BusinessCardTests.swift
//  Challenge2-BusinessCardTests
//
//  Created by 더스틴 on 4/26/26.
//

import Testing
@testable import Challenge2_BusinessCard

struct NicknameTests {

    @Test
    func 닉네임에_특수문자가_포함된_경우_Nickname_객체는_생성되지_않는다() {
        let string = "#ustin"
        
        let nickname = Nickname(string: string)
        
        #expect(nickname == nil)
    }

}
