//
//  Name.swift
//  Challenge2-BusinessCard
//
//  Created by 더스틴 on 4/26/26.
//

import Foundation

struct Name {
    
    private var string: String
    var toString: String {
        string
    }
    
    private enum NameRule {
        static let predicate = NSPredicate(format: Validation.regexPredicateFormat, "^[가-힣]{1,10}$")
    }
    
    init?(string: String) {
        guard NameRule.predicate.evaluate(with: string) else {
            return nil
        }
        
        self.string = string
    }
}
