//
//  BusinessCardView.swift
//  Challenge2-BusinessCard
//
//  Created by 더스틴 on 4/22/26.
//

import SwiftUI

struct BusinessCardView: View {
    
    let card: InitialBusinessCard
    let color: Color
    
    init(card: InitialBusinessCard, color: Color) {
        self.card = card
        self.color = color
    }
    
    init(card: BusinessCard) {
        self.init(
            card: .init(
                nickname: card.nickname,
                name: card.name,
                phoneNumber: card.phoneNumber,
                field: card.field
            ),
            color: card.color.toColor
        )
    }
    
    var body: some View {
        ZStack {
            BackgroundView(color: color)
            CardInformationView(card: card)
        }
        .frame(width: 315, height: 175)
    }
}
