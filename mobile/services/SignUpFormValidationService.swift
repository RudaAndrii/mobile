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
        
        if (form.firstName.isEmpty) {
            errors.append("First name is empty")
        }
        if (form.lastName.isEmpty) {
            errors.append("Last name is empty")
        }
        if (!validateEmail(text: form.emailAddress)) {
            errors.append("Email you've provided doesn't seems to be valid.")
        }
        if (!validatePhone(text: form.phone)) {
            errors.append("Phone you've provided doesn't seems to be valid.")
        }
        if (!validatePassword(text: form.password)) {
            errors.append("Password should have at least 8 symbols")
        }
        if (!validatePasswordConfirmation(password: form.password, passwordConfirmation: form.passwordConfirmation)) {
            errors.append("Passwords don't match")
        }
        
        return errors
    }
    
    static func validateEmail(text: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        
        return emailPred.evaluate(with: text)
    }
    
    static func validatePhone(text: String) -> Bool {
        let phoneRegex = "^[0-9+]{0,1}+[0-9]{5,16}$"
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", phoneRegex)
        return phoneTest.evaluate(with: text)
    }
    
    static func validatePassword(text: String) -> Bool {
        return text.count > 7
    }
    
    static func validatePasswordConfirmation(password: String, passwordConfirmation: String) -> Bool {
        return !password.isEmpty && (password == passwordConfirmation)
    }

}
