//
//  ValidationService.swift
//  mobile
//
//  Created by Andrii on 12/23/20.
//

import Foundation

class SignUpFormValidationService {
    
    static func vaildateSignUpForm(form: SignUpModel) -> [String] {
        var errors = [String]()
        
        for (_, field) in form.fields.enumerated() {
            if let error = validateField(field) {
                errors.append(error)
            }
        }
        
        return errors
    }
    
    static func validateField(_ field: SignUpField) -> String? {
        switch field.type {
            case .firstName, .lastName:
                if (field.value.isEmpty) {
                    return field.type.errorText()
                }
            case .email, .phone, .password:
                if (!validateText(field.value, withRegexp: field.type.validationRegexp())) {
                    return field.type.errorText()
                }
            default:
                return nil
        }
        return nil;
    }
    
    static func validatePasswordConfirmation(password: String, passwordConfirmation: String) -> Bool {
        return !password.isEmpty && (password == passwordConfirmation)
    }

    
    static func validateText(_ text: String, withRegexp regexp: String) -> Bool {
        let regexpTest = NSPredicate(format: "SELF MATCHES %@", regexp)
        return regexpTest.evaluate(with: text)
    }
}
