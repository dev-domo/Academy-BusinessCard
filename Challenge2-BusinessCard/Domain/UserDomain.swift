//
//  UserDomain.swift
//  Challenge2-BusinessCard
//
//  Created by 더스틴 on 4/27/26.
//

struct UserDomain {
    
    private var field: Field
    
    var name: String {
        field.name
    }
    
    init(field: Field) {
        self.field = field
    }
}
