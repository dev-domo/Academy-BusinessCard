//
//  BusinessCardDTO.swift
//  Challenge2-BusinessCard
//
//  Created by 더스틴 on 4/22/26.
//

struct BusinessCardDTO: Codable {
    let nickname: String
    let name: String
    let phoneNumber: String
    let field: String
    let color: BusinessCardColorDTO
    let origin: String
}
