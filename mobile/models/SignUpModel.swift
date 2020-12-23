//
//  SignUpModel.swift
//  mobile
//
//  Created by Andrii on 12/23/20.
//

import SwiftUI

class SignUpModel: ObservableObject {
    @Published var firstName: String = ""
    @Published var lastName: String = ""
    @Published var emailAddress: String = ""
    @Published var phone: String = ""
    @Published var password: String = ""
    @Published var passwordConfirmation: String = ""
}
