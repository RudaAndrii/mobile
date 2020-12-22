//
//  ClearButtonInTextField.swift
//  mobile
//
//  Created by Andrii on 10/25/20.
//

import SwiftUI
import CoreData

struct ClearButtonInTextField: ViewModifier {
    @Binding var text: String

    public func body(content: Content) -> some View {
        ZStack(alignment: .trailing) {
            content
            if (!text.isEmpty) {
                Button(action: {
                    self.text = ""
                }) {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(UIColor.opaqueSeparator))
                }
                .padding(.trailing, 8)
            }
        }
    }
}
