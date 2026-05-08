//
//  BusinessCards.swift
//  Challenge2-BusinessCard
//
//  Created by 더스틴 on 5/8/26.
//

import SwiftData

@Model
class BusinessCards {
    var cards: [BusinessCard]
    
    init(cards: [BusinessCard]) {
        self.cards = cards
    }
    
    func deleteCard(at index: Int) -> BusinessCard {
        let sharedCardIndices = cards.indices.filter { cards[$0].origin == CardOrigin.shared.rawValue }
        let targetIndex = sharedCardIndices[index]
        return cards.remove(at: targetIndex)
    }
}
