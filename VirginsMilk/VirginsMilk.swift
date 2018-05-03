//
//  VirginsMilk.swift
//  VirginsMilk
//
//  Created by Schumakher on 4/24/18.
//  Copyright © 2018 Schumakher. All rights reserved.
//

import Foundation

class VirginsMilk {
    
    public init() {}
    
    public func validatePassword(requirements: PasswordRequirements, password: String) -> Bool {
        
        return PasswordValidator.init(password: password, requirements: requirements).proceed()
    }

}
