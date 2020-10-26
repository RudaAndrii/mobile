//
//  ContentView.swift
//  mobile
//
//  Created by Andrii on 10/19/20.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State private var nameInput: String = ""
    @State private var nameOutput: String = ""

    var body: some View {
        VStack() {
            HStack() {
                TextField("Input your name", text: $nameInput)
                    .frame(width: 220, height: 50, alignment: .center)
                    .modifier(ClearButtonInTextField(text: $nameInput))

                Button(action: {
                    self.nameOutput = nameInput
                }) {
                    Text("Say Hello!")
                }
                .buttonStyle(GradientButtonStyle())
            }
            if (nameOutput != "") {
                Text("Hello, \(nameOutput)")
            }
        }
    }
}
