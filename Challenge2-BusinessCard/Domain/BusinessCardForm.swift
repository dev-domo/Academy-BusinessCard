//
//  BusinessCardForm.swift
//  Challenge2-BusinessCard
//
//  Created by 더스틴 on 4/27/26.
//

struct BusinessCardForm {
    
    var nickname: Nickname?
    
    enum BuildError: Error {
        case missingNickname
    }
    
    func build() throws {
        guard let nickname else {
            throw BuildError.missingNickname
        }
    }
}
