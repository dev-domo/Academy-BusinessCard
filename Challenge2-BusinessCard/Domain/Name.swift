//
//  Name.swift
//  Challenge2-BusinessCard
//
//  Created by 더스틴 on 4/26/26.
//

import Foundation

struct Name {
    
    let string: String
    
    private enum NameRule {
        static let predicate = NSPredicate(format: "SELF MATCHES %@", "^[가-힣]")
    }
    
    init?(string: String) {
        guard NameRule.predicate.evaluate(with: string) else {
            return nil
        }
        
        self.string = string
    }
}
