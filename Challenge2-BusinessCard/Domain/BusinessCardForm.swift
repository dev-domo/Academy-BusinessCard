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
    
    func build() -> BusinessCard? {
        guard let nickname,
              let name,
              let phoneNumber,
              let domain,
              let cardColor
        else { return nil }
        
        return .init(
            nickname: nickname,
            name: name,
            phoneNumber: phoneNumber,
            field: domain,
            cardColor: cardColor,
            origin: CardOrigin.mine
        )
    }
}
