//
//  PasswordRequirements.swift
//  VirginsMilk
//
//  Created by Schumakher on 4/24/18.
//  Copyright © 2018 Schumakher. All rights reserved.
//

public class PasswordRequirements {
    
    private final var uppercaseCount: Int
    private final var lowercaseCount: Int
    private final var decimalCount: Int
    private final var specialSymbolCount: Int
    private final var maxCharCount: Int
    private final var minCharCount: Int
    private final var notInTopTen: Bool
    private final var uniqueCharCount: Int
    private final var fromGivenCharCount: Int
    private final var fromGivenChars: [Character]
    private final var containVirginsMilk: Bool
    
    private init(
        uppercaseCount: Int,
        lowercaseCount: Int,
        decimalCount: Int,
        specialSymbolCount: Int,
        maxCharCount: Int,
        minCharCount: Int,
        notInTopTen: Bool,
        uniqueCharCount: Int,
        fromGivenCharCount: Int,
        fromGivenChars: [Character],
    containVirginsMilk: Bool) {
        
        self.uppercaseCount = uppercaseCount
        self.lowercaseCount = lowercaseCount
        self.decimalCount = decimalCount
        self.specialSymbolCount = specialSymbolCount
        self.maxCharCount = maxCharCount
        self.minCharCount = minCharCount
        self.notInTopTen = notInTopTen
        self.uniqueCharCount = uniqueCharCount
        self.fromGivenCharCount = fromGivenCharCount
        self.fromGivenChars = fromGivenChars
        self.containVirginsMilk = containVirginsMilk
    }
    
    public func getUppercaseCount() -> Int {
        return uppercaseCount
    }
    
    public func getLowercaseCount() -> Int {
        return lowercaseCount
    }
    
    public func getDecimalCount() -> Int {
        return decimalCount
    }
    
    public func getSpecialSymbolCount() -> Int {
        return specialSymbolCount
    }
    
    public func getMaxCharCount() -> Int {
        return maxCharCount
    }
    
    public func getMinCharCount() -> Int {
        return minCharCount
    }
    
    public func getNotInTopTen() -> Bool {
        return notInTopTen
    }
    
    public func getUniqueCharCount() -> Int {
        return uniqueCharCount
    }
    
    public func getFromGivenCharCount() -> Int {
        return fromGivenCharCount
    }
    
    public func getFromGivenChars() -> [Character] {
        return fromGivenChars
    }
    
    public func getContainVirginsMilk() -> Bool {
        return containVirginsMilk
    }
    
    public class Builder {
        
        private var uppercaseCount: Int?
        private var lowercaseCount: Int?
        private var decimalCount: Int?
        private var specialSymbolCount: Int?
        private var maxCharCount: Int
        private var minCharCount: Int
        private var notInTopTen: Bool?
        private var uniqueCharCount: Int?
        private var fromGivenCharCount: Int?
        private var fromGivenChars: [Character]?
        private var containVirginsMilk: Bool?
        
        public init(minCharCount: Int, maxCharCount: Int) {
            self.minCharCount = minCharCount
            self.maxCharCount = maxCharCount
        }
        
        
        public func setUpperCaseCount(uppercaseCount: Int) -> Builder {
            self.uppercaseCount = uppercaseCount;
            return self
        }
        
        public func setLowercaseCount(lowercaseCount: Int) -> Builder {
            self.lowercaseCount = lowercaseCount
            return self
        }
        
        public func setDecimalCount(decimalCount: Int) -> Builder {
            self.decimalCount = decimalCount
            return self
        }
        
        public func setSpecialSymbolCount(specialSymbolCount: Int) -> Builder {
            self.specialSymbolCount = specialSymbolCount
            return self
        }
        
        public func setMaxCharCount(maxCharCount: Int) -> Builder {
            self.maxCharCount = maxCharCount
            return self
        }
        
        public func setMinCharCount(minCharCount: Int) -> Builder {
            self.minCharCount = minCharCount
            return self
        }
        
        public func isNotInTopTen(notInTopTen: Bool) -> Builder {
            self.notInTopTen = notInTopTen
            return self
        }
        
        public func setUniqueCharCount(uniqueCharCount: Int) -> Builder {
            self.uniqueCharCount = uniqueCharCount
            return self
        }
        
        public func setContainesCountFromGiven(fromGivenCharCount: Int, chars: [Character]) -> Builder {
            self.fromGivenCharCount = fromGivenCharCount
            self.fromGivenChars = chars
            return self
        }
        
        public func isContainVirginsMilk(containVirginsMilk: Bool) -> Builder {
            self.containVirginsMilk = containVirginsMilk
            return self
        }
        
        public func build() -> PasswordRequirements {
            return PasswordRequirements.init(
                uppercaseCount: uppercaseCount ?? 0,
                lowercaseCount: lowercaseCount ?? 0,
                decimalCount: decimalCount ?? 0,
                specialSymbolCount: specialSymbolCount ?? 0,
                maxCharCount: maxCharCount,
                minCharCount: minCharCount,
                notInTopTen: notInTopTen ?? false,
                uniqueCharCount: uniqueCharCount ?? 0,
                fromGivenCharCount: fromGivenCharCount ?? 0,
                fromGivenChars: fromGivenChars ?? [],
                containVirginsMilk: containVirginsMilk ?? false)
        }
    }
}
