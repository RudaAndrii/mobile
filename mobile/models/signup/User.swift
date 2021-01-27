//
//  User.swift
//  mobile
//
//  Created by Andrii on 1/27/21.
//

import Foundation
import SwiftUI

class User: Codable, Identifiable {
    var firstName: String?
    var lastName: String?
    var phoneNumber: String?
    var email: String?
    var password: String?
    
    init(fields: [SignUpField]) {
        for field in fields {
            switch field.type {
            case .firstName:
                self.firstName = field.value
            case .lastName:
                self.lastName = field.value
            case .email:
                self.email = field.value
            case .phone:
                self.phoneNumber = field.value
            case .password:
                self.password = field.value
            default:
                ()
            }
        }
    }
}
