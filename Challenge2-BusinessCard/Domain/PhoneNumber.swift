//
//  PhoneNumber.swift
//  Challenge2-BusinessCard
//
//  Created by 더스틴 on 4/26/26.
//

import Foundation

struct PhoneNumber {
    
    private let prefixOffset: Int = 3
    private let suffixOffset: Int = 7
    private let seperator: Character = " "
    
    let string: String
    
    var formatted: String {
        var numberString = string
        [suffixOffset, prefixOffset].forEach {
            insertSeparator(for: &numberString, at: $0)
        }
        
        return numberString
    }
    
    private func insertSeparator(for string: inout String, at offset: Int) {
        string.insert(seperator, at: string.index(string.startIndex, offsetBy: offset))
    }
    
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
