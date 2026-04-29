//
//  Nickname.swift
//  Challenge2-BusinessCard
//
//  Created by 더스틴 on 4/26/26.
//

import Foundation

struct Nickname {
    
    private var string: String
    var toString: String {
        string
    }
    
    private enum NicknameRule {
        static let predicate = NSPredicate(format: "SELF MATCHES %@", "^[A-Z][a-z]{1,9}$")
    }
    
    init?(string: String) {
        guard NicknameRule.predicate.evaluate(with: string) else {
            return nil
        }
        
        self.string = string
    }
}
