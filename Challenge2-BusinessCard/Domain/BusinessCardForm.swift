//
//  BusinessCardForm.swift
//  Challenge2-BusinessCard
//
//  Created by 더스틴 on 4/27/26.
//

struct BusinessCardForm {
    
    var nickname: Nickname?
    var name: Name?
    var phoneNumber: PhoneNumber?
    var domain: UserDomain?
    var cardColor: CardColor?
    
    enum BuildError: Error {
        case missingNickname
        case missingName
        case missingPhoneNumber
        case missingDomain
        case missingCardColor
    }
    
    func build() throws {
        guard let nickname else { throw BuildError.missingNickname }
        guard let name else { throw BuildError.missingName }
        guard let phoneNumber else { throw BuildError.missingPhoneNumber }
        guard let domain else { throw BuildError.missingDomain }
        guard let cardColor else { throw BuildError.missingCardColor }
    }
}
