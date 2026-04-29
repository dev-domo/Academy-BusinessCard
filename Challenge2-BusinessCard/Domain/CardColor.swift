//
//  CardColor.swift
//  Challenge2-BusinessCard
//
//  Created by 더스틴 on 4/27/26.
//

import SwiftUI

struct CardColor {
    
    var color: Color
    
    private enum ColorRule: CaseIterable {
        case black
        case blue
        case red
        case cyan
        
        var color: Color {
            switch self {
            case .black: .black
            case .blue: .blue
            case .red: .red
            case .cyan: .cyan
            }
        }
    }
    
    init?(color: Color) {
        let isValidColor = ColorRule.allCases.first { $0.color == color }
        guard let _ = isValidColor else {
            return nil
        }
        
        self.color = color
    }
}
