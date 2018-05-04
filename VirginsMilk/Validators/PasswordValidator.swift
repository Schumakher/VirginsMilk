//
//  PasswordValidation.swift
//  VirginsMilk
//
//  Created by Schumakher on 4/24/18.
//  Copyright © 2018 Schumakher. All rights reserved.
//

import Foundation

internal class PasswordValidator {
    
    private final var password: String
    private final var requirements: PasswordRequirements
    
 
    required internal init(password: String, requirements: PasswordRequirements) {
        self.password = password.trimmingCharacters(in: .whitespacesAndNewlines)
        self.requirements = requirements
    }
    
    func proceed() -> Bool {
        
        if (password.count > requirements.getMaxCharCount()) {
            return false
        }
        
        if (password.count < requirements.getMinCharCount()) {
            return false
        }
        
        if (requirements.getUppercaseCount() != 0) {
            if !checkUppercaseCount() {
                return false
            }
        }
        
        if (requirements.getDecimalCount() != 0) {
            if !checkDecimalCount() {
                return false
            }
        }
        
        if (requirements.getLowercaseCount() != 0) {
            if !checkLowercaseCount() {
                return false
            }
        }
        
        if (requirements.getSpecialSymbolCount() != 0) {
            if !checkSpecialSymbolCount() {
                return false
            }
        }
        
        if (requirements.getNotInTopTen()) {
            if !checkNotInTopTen() {
                return false
            }
        }
        
        if (requirements.getUniqueCharCount() != 0) {
            if !checkUniqueCharCount() {
                return false
            }
        }
        
        if (requirements.getFromGivenCharCount() != 0) {
            if !checkFromGivenCharCount() {
                return false
            }
        }
        
        return true
    }
    
    private func checkUppercaseCount() -> Bool {
        var uppercaseCount = 0
        
        for char in password.unicodeScalars {
            if CharacterSet.uppercaseLetters.contains(char) {
                uppercaseCount += 1
            }
        }
        
        return uppercaseCount >= requirements.getUppercaseCount()
    }
    
    private func checkDecimalCount() -> Bool {
        
        let decimalCount = password.replacingOccurrences(of: "[^?0-9]+", with: "").count
        
        return decimalCount >= requirements.getDecimalCount()
    }
    
    private func checkLowercaseCount() -> Bool {
        var lowercaseCount = 0
        
        for char in password.unicodeScalars {
            if CharacterSet.lowercaseLetters.contains(char) {
                lowercaseCount += 1
            }
        }
        
        return lowercaseCount >= requirements.getLowercaseCount()
    }
    
    private func checkSpecialSymbolCount() -> Bool {
        
        do {
        
            let regex = try NSRegularExpression(pattern: "[$&!+,:;=?@#|]")
            
            let results = regex.matches(in: password, range: NSRange(password.startIndex..., in: password))
            
            let mapped = results.map {
                String(password[Range($0.range, in: password)!])
            }
            
            return mapped.count >= requirements.getSpecialSymbolCount()
            
        } catch {
            
            return true
        }
    }
    
    private func checkNotInTopTen() -> Bool {
        
        let topTen = ["password", "123456", "12345678", "12345", "qwerty", "123456789", "letmain", "football", "admin"]
        
        return !topTen.contains(password)
    }
    
    private func checkUniqueCharCount() -> Bool {
        return Set.init(password).count >= requirements.getUniqueCharCount()
    }
    
    private func checkFromGivenCharCount() -> Bool {
        return true
    }
}
