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

    @Test
    func 닉네임에_숫자가_포함된_경우_Nickname_객체는_생성되지_않는다() {
        let string = "Dus3tin"
        
        let nickname = Nickname(string: string)
        
        #expect(nickname == nil)
    }
    
    @Test
    func 닉네임에_한글이_포함된_경우_Nickname_객체는_생성되지_않는다() {
        let string = "더stin"
        
        let nickname = Nickname(string: string)
        
        #expect(nickname == nil)
    }
    
    @Test
    func 닉네임의_첫_글자가_영문_대문자가_아닌_경우_Nickname_객체는_생성되지_않는다() {
        let string = "dustin"
        
        let nickname = Nickname(string: string)
        
        #expect(nickname == nil)
    }
}
