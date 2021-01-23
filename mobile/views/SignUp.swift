//
//  RegistrationView.swift
//  mobile
//
//  Created by Andrii on 12/23/20.
//

import SwiftUI

struct SignUp: View {
    @ObservedObject var signUp = SignUpModel()
    @State var errors = [String] ()
    
    var body: some View {
        VStack {
            if (!errors.isEmpty) {
                VStack(alignment: .leading) {
                    ForEach(errors, id: \.self) { error in
                        SignUpErrorRow(error: error)
                    }
                }
            }
            
            ForEach(signUp.fields) { field in
                SignUpInputField(field: field)
            }

            Button(action: {
                errors = SignUpFormValidationService.vaildateSignUpForm(form: signUp)
            }) {
                Text("Submit!")
            }
        }
    }
}
