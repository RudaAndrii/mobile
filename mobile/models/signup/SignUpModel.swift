//
//  SignUpModel.swift
//  mobile
//
//  Created by Andrii on 12/23/20.
//

import SwiftUI

class SignUpModel: ObservableObject {
    @Published var fields = createFormWithDefaultValues()
    
    private static func createFormWithDefaultValues() -> [SignUpField] {
        [
            SignUpField("First name", .firstName, isSecured: false),
            SignUpField("Last name", .lastName, isSecured: false),
            SignUpField("Email", .email, isSecured: false),
            SignUpField("Phone", .phone, isSecured: false),
            SignUpField("Password", .password, isSecured: true),
            SignUpField("Password confirmation", .passwordConfirmation, isSecured: true),
        ]
    }
    
    func getField(byType type: SignUpFieldType) -> SignUpField {
        fields.first { field in field.type == type }!
    }
    
}
