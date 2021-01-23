//
//  SignUpFieldError.swift
//  mobile
//
//  Created by Andrii on 1/10/21.
//

import Foundation

enum SignUpFieldError {
    static let firstName = "First name is empty"
    static let lastName = "Last name is empty"
    static let email = "Email you've provided doesn't seems to be valid"
    static let phone = "Phone you've provided doesn't seems to be valid"
    static let password = "Password should have at least 8 symbols"
    static let passwordConfirmation = "Passwords don't match"
    static let `default` = "Form validation error"
}
