//
//  GradientButtonStyle.swift
//  mobile
//
//  Created by Andrii on 10/25/20.
//

import SwiftUI
import CoreData

struct GradientButtonStyle: ButtonStyle {
    
    private var pressed: LinearGradient {
        LinearGradient(gradient: Gradient(colors: [Color("darkGreen"), Color("lightGreen")]),
                                    startPoint: .leading,
                                    endPoint: .trailing)
    }
    
    private var released: LinearGradient {
        LinearGradient(gradient: Gradient(colors: [Color("darkGreen"), Color("lightGreen")]),
                                   startPoint: .trailing,
                                   endPoint: .leading)
    }

    
    public func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .foregroundColor(.black)
            .padding(EdgeInsets(top: 3, leading: 7, bottom: 3, trailing: 7))
            .background(configuration.isPressed ? pressed : released)
            .cornerRadius(30)
            .scaleEffect(configuration.isPressed ? 1.02 : 1.00)
            .animation(configuration.isPressed ? Animation.easeInOut(duration: 0.1) : nil)
    }
}


