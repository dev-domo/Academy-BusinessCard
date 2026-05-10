//
//  TextFieldStroke.swift
//  Challenge2-BusinessCard
//
//  Created by 더스틴 on 5/10/26.
//

import SwiftUI

struct TextFieldStroke: View {
    
    let color: Color
    
    var body: some View {
        RoundedRectangle(cornerRadius: 12)
            .stroke(color, lineWidth: 1)
    }
}
