//
//  PhoneNumber.swift
//  Challenge2-BusinessCard
//
//  Created by 더스틴 on 4/26/26.
//

import Foundation

struct PhoneNumber {
    
    let string: String
    
    private enum PhoneNumberRule {
        static let predicate = NSPredicate(format: "SELF MATCHES %@", "^010[0-9]{8}$")
    }
    
    init?(string: String) {
        guard PhoneNumberRule.predicate.evaluate(with: string) else {
            return nil
        }
        
        self.string = string
    }
}
