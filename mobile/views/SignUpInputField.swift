//
//  SignUpIntutField.swift
//  mobile
//
//  Created by Andrii on 1/11/21.
//

import Foundation
import SwiftUI

struct SignUpInputField: View {
    @State var field: SignUpField
    
    var body: some View {
        if (!field.isSecured) {
            TextField(field.label, text: self.$field.value)
                .autocapitalization(UITextAutocapitalizationType.none)
                .disableAutocorrection(true)
                .padding()
        } else {
            SecureField(field.label, text: self.$field.value)
                .autocapitalization(UITextAutocapitalizationType.none)
                .disableAutocorrection(true)
                .padding()
        }
    }
}
