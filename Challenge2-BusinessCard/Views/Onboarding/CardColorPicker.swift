//
//  CardColorPicker.swift
//  Challenge2-BusinessCard
//
//  Created by 더스틴 on 4/22/26.
//

import SwiftUI

struct CardColorPicker: View {
    
    private let colors: [Color] = [.black, .blue, .red, .cyan]
    @Binding var pickedColor: Color
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .fill(Color(.systemGray6))
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.gray.opacity(0.2), lineWidth: 1)
                )
                .frame(maxWidth: .infinity)
                .frame(height: 70)
            
            HStack {
                ForEach(colors, id: \.self) { color in
                    Circle()
                        .fill(color)
                        .frame(width: 35, height: 35)
                        .overlay {
                            if pickedColor == color {
                                Circle()
                                    .stroke(Color.white, lineWidth: 3)
                            }
                        }
                        .onTapGesture {
                            pickedColor = color
                        }
                        .padding(.horizontal, 8)
                }
            }
            .padding()
        }
        .frame(width: 315)
    }
}
