//
//  Nickname.swift
//  Challenge2-BusinessCard
//
//  Created by 더스틴 on 4/26/26.
//

import Foundation

struct Nickname {
    
    private static let nicknameRegex = "^[A-Z][a-z]{1,9}$"
    private var string: String
    var toString: String {
        string
    }
    
    private enum NicknameRule {
        static let predicate = NSPredicate(format: Validation.regexPredicateFormat, nicknameRegex)
    }
    
    init?(string: String) {
        guard NicknameRule.predicate.evaluate(with: string) else {
            return nil
        }
        
        self.string = string
    }
}
