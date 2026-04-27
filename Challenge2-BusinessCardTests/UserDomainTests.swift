//
//  UserDomainTests.swift
//  Challenge2-BusinessCard
//
//  Created by 더스틴 on 4/27/26.
//

import Testing
@testable import Challenge2_BusinessCard

struct UserDomainTests {
    
    @Test("Domain 객체 생성", arguments: [Field.tech, Field.design, Field.domain])
    func Field_열거형_케이스를_통해_Domain_객체를_생성할_수_있다(field: Field) {
        let domain = UserDomain(field: field)
        
        #expect(domain.name == field.name)
    }
}
