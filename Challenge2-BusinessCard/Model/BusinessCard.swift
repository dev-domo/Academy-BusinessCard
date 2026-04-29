//
//  BusinessCard.swift
//  Challenge2-BusinessCard
//
//  Created by 더스틴 on 4/22/26.
//

import SwiftData

@Model
class BusinessCard {
    var nickname: String
    var name: String
    var phoneNumber: String
    var field: String
    var color: BusinessCardColor
    var origin: String
    
    init(
        nickname: String,
        name: String,
        phoneNumber: String,
        field: String,
        color: BusinessCardColor,
        origin: String
    ) {
        self.nickname = nickname
        self.name = name
        self.phoneNumber = phoneNumber
        self.field = field
        self.color = color
        self.origin = origin
    }
    
    convenience init(dto: BusinessCardDTO) {
        self.init(
            nickname: dto.nickname,
            name: dto.name,
            phoneNumber: dto.phoneNumber,
            field: dto.field,
            color: .init(dto: dto.color),
            origin: dto.origin
        )
    }
    
    convenience init(
        nickname: Nickname,
        name: Name,
        phoneNumber: PhoneNumber,
        field: UserDomain,
        cardColor: CardColor,
        origin: CardOrigin
    ) {
        self.init(
            nickname: nickname.toString,
            name: name.toString,
            phoneNumber: phoneNumber.formatted,
            field: field.name,
            color: .init(color: cardColor.color),
            origin: origin.rawValue
        )
    }
    
    func toDTO() -> BusinessCardDTO {
        .init(
            nickname: nickname,
            name: name,
            phoneNumber: phoneNumber,
            field: field,
            color: color.toDTO(),
            origin: origin
        )
    }
}
