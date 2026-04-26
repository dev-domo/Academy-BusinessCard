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
}
