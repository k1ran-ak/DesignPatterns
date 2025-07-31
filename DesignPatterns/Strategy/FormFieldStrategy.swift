//
//  FormFieldStrategy.swift
//  DesignPatterns
//
//  Created by Anush Kiran on 31/07/25.
//

import Foundation

protocol Validator {
    
    func validate(_ text: String) -> Bool
}

struct EmailValidator: Validator {
    
    func validate(_ text: String) -> Bool {
        text.contains("@")
    }
}

struct PasswordValidator: Validator {
    
    func validate(_ text: String) -> Bool {
        text.count >= 8
    }
}

class FormField {
    
    var validator: Validator
    init(validator: Validator) { self.validator = validator }
    func isValid(_ input: String) -> Bool { validator.validate(input) }
}

// Usage
let emailField = FormField(validator: EmailValidator())
let password = FormField(validator: PasswordValidator())
