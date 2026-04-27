//
//  BusinessCardForm.swift
//  Challenge2-BusinessCard
//
//  Created by 더스틴 on 4/27/26.
//

struct BusinessCardForm {
    
    var nickname: Nickname?
    var name: Name?
    
    enum BuildError: Error {
        case missingNickname
        case missingName
    }
    
    func build() throws {
        guard let nickname else { throw BuildError.missingNickname }
        guard let name else { throw BuildError.missingName }
    }
}
