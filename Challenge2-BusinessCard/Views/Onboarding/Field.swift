//
//  Field.swift
//  Challenge2-BusinessCard
//
//  Created by 더스틴 on 4/22/26.
//

import Foundation

enum Field: String, CaseIterable {
    case tech
    case design
    case domain
    
    var name: String {
        self.rawValue.capitalized
    }
}
