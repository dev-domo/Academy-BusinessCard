//
//  SelectCardColorView.swift
//  Challenge2-BusinessCard
//
//  Created by 더스틴 on 4/22/26.
//

import SwiftUI

struct SelectCardColorView: View {
    
    let card: InitialBusinessCard
    
    @Binding var color: Color
    //@State private var pickedColor: Color = .black
    
    var body: some View {
        VStack(spacing: 20) {
            BusinessCardView(
                card: card,
                color: color
            )
            .frame(maxWidth: .infinity)
            
            CardColorPicker(pickedColor: $color)
                .frame(maxWidth: .infinity)
        }
    }
}
