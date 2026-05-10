//
//  Field.swift
//  Challenge2-BusinessCard
//
//  Created by 더스틴 on 5/9/26.
//

import Foundation

enum Field: String {
    case tech
    case design
    case domain
    
    var name: String {
        self.rawValue.capitalized
    }
}
