//
//  CardComponentView.swift
//  Challenge2-BusinessCard
//
//  Created by 더스틴 on 4/22/26.
//

import SwiftUI

struct CardComponentView: View {
    
    let opacity: Double
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        RoundedRectangle(cornerRadius: 4)
            .fill(Color.gray.opacity(opacity))
            .frame(width: width, height: height)
    }
}
