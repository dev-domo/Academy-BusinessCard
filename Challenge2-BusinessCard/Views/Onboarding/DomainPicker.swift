//
//  DomainPicker.swift
//  Challenge2-BusinessCard
//
//  Created by 더스틴 on 4/22/26.
//

import SwiftUI

struct DomainPicker: View {
    
    @Binding var field: Field
    
    var body: some View {
        HStack {
            Text("도메인")
                .font(.body)
            
            Spacer()
            
            Picker("", selection: $field) {
                ForEach(Field.allCases, id: \.rawValue) {
                    Text($0.name).tag($0)
                }
            }
        }
        .padding(.horizontal, 16)
        .frame(maxWidth: .infinity)
        .frame(height: 50)
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(Color(.systemGray6))
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.gray.opacity(0.2), lineWidth: 1)
                )
        )
    }
}

#Preview {
    DomainPicker(field: .constant(.design))
}
