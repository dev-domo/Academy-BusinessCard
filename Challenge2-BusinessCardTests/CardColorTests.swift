//
//  CardColorTests.swift
//  Challenge2-BusinessCard
//
//  Created by 더스틴 on 4/27/26.
//

import SwiftUI
import Testing
@testable import Challenge2_BusinessCard

struct CardColorTests {
    
    @Test
    func black_red_blue_cyan_색상이_아닌_Color로_CardColor_객체를_생성할_수_없다() {
        let color = CardColor(color: .brown)
        
        #expect(color == nil)
    }
    
    @Test("CardColor 생성", arguments: [Color.black, Color.blue, Color.red, Color.cyan])
    func black_red_blue_cyan_색상으로만_CardColor_객체를_생성할_수_있다(color: Color) {
        let color = CardColor(color: color)
        
        #expect(color != nil)
    }
}
