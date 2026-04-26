//
//  NameTests.swift
//  Challenge2-BusinessCard
//
//  Created by 더스틴 on 4/26/26.
//

import Testing
@testable import Challenge2_BusinessCard

struct NameTests {
    
    @Test
    func 이름에_특수문자가_포함된_경우_Name_객체는_생성되지_않는다() {
        let string = "#나다"
        
        let name = Name(string: string)
        
        #expect(name == nil)
    }
    
    @Test
    func 이름에_숫자가_포함된_경우_Name_객체는_생성되지_않는다() {
        let string = "3나다"
        
        let name = Name(string: string)
        
        #expect(name == nil)
    }
    
    @Test
    func 이름에_영어가_포함된_경우_Name_객체는_생성되지_않는다() {
        let string = "가나다a"
        
        let name = Name(string: string)
        
        #expect(name == nil)
    }
    
    @Test(
        "이름 길이 유효성 테스트",
        arguments: [
            ("가나다라마바사아자차", true),
            ("가나다라마바사아자차카", false)
        ]
    )
    func 이름은_10글자_이하여야_Name_객체가_생성된다(argument: (name: String, isValid: Bool)) {
        let string = argument.name
        
        let name = Name(string: string)
        
        #expect((name != nil) == argument.isValid)
    }
}
