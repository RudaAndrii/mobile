//
//  SignUpField.swift
//  mobile
//
//  Created by Andrii on 1/10/21.
//

import Foundation

class SignUpField: ObservableObject, Identifiable {
    var id = UUID()
    var type: SignUpFieldType
    var label: String
    var value: String = ""
    var isSecured: Bool
    
    init(_ label: String, _ type: SignUpFieldType, isSecured: Bool) {
        self.label = label
        self.type = type
        self.isSecured = isSecured
    }
}
