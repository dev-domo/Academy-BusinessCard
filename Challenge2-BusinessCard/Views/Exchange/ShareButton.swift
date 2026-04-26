//
//  ShareButton.swift
//  Challenge2-BusinessCard
//
//  Created by 더스틴 on 4/22/26.
//

import SwiftUI

struct ShareButton: View {
    
    @Binding var isPresented: Bool
    
    let card: BusinessCardDTO
    
    var body: some View {
        Button {
            isPresented = true
        } label: {
            Image(systemName: "square.and.arrow.up")
                .foregroundStyle(.white)
                .padding(8)
                .background(Color.white.opacity(0.3))
                .clipShape(Circle())
        }
    }
}
