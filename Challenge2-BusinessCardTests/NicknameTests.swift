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
    
    @Test
    func 닉네임의_두번째_글자부터_마지막_글자에_영문_대문자가_포함_경우_Nickname_객체는_생성되지_않는다() {
        let string = "DusTin"
        
        let nickname = Nickname(string: string)
        
        #expect(nickname == nil)
    }
    
    @Test
    func 닉네임이_한_글자인_경우_Nickname_객체는_생성되지_않는다() {
        let string = "D"
        
        let nickname = Nickname(string: string)
        
        #expect(nickname == nil)
    }
    
    @Test
    func 닉네임이_영문_대문자로_시작하고_이후_글자가_영문_소문자인_경우_Nickname_객체가_생성된다() {
        let string = "Dustin"
        
        let nickname = Nickname(string: string)
        
        #expect(nickname != nil)
    }
}
