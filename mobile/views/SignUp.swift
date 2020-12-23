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
                ForEach(errors, id: \.self) { error in
                    SignUpErrorRow(error: error)
                }
            }
            
            TextField("First name", text: $signUp.firstName).padding()
            TextField("Last name", text: $signUp.lastName).padding()
            TextField("Email", text: $signUp.emailAddress).keyboardType(.emailAddress).padding()
            TextField("Phone", text: $signUp.phone).keyboardType(.phonePad).padding()
            SecureField("Password", text: $signUp.password).padding()
            SecureField("Password confirmation", text: $signUp.passwordConfirmation).padding()
            
            Button(action: {
                errors = SignUpFormValidationService.vaildateSignUpForm(form: signUp)
            }) {
                Text("Submit!")
            }
        }
    }

}
