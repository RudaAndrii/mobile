//
//  SignUpErrorRow.swift
//  mobile
//
//  Created by Andrii on 12/24/20.
//

import SwiftUI
import Foundation

struct SignUpErrorRow: View {
    var error: String

    var body: some View {
        Text(error).foregroundColor(.red)
    }
}
