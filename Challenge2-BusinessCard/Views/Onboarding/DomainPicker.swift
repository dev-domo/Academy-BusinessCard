//
//  DomainPicker.swift
//  Challenge2-BusinessCard
//
//  Created by 더스틴 on 5/10/26.
//

import SwiftUI

struct DomainPicker: View {
    
    @Binding var field: Field
    
    var body: some View {
        Picker("도메인", selection: $field) {
            Text(Field.tech.name).tag(Field.tech)
            Text(Field.design.name).tag(Field.design)
            Text(Field.domain.name).tag(Field.domain)
        }
    }
}
