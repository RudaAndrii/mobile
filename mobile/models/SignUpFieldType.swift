//
//  SignUpFieldType.swift
//  mobile
//
//  Created by Andrii on 1/10/21.
//

import Foundation

enum SignUpFieldType {
    
    case firstName
    case lastName
    case email
    case phone
    case password
    case passwordConfirmation
    case unknown
    
    func errorText() -> String {
        switch self {
        case .firstName: return SignUpFieldError.firstName
        case .lastName: return SignUpFieldError.lastName
        case .email: return SignUpFieldError.email
        case .phone: return SignUpFieldError.phone
        case .password: return SignUpFieldError.password
        case .passwordConfirmation: return SignUpFieldError.passwordConfirmation
        default:
            return SignUpFieldError.default
        }
    }
    
    func validationRegexp() -> String {
        switch self {
        case .email: return ValidationRegexp.email
        case .phone: return ValidationRegexp.phone
        case .password: return ValidationRegexp.password
        default:
            return ValidationRegexp.default
        }
    }
}
