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
    @State private var buttonStyleToggler: Bool = false

    var body: some View {
        VStack() {
            TextField("Input your name", text: $nameInput)
                .frame(width: 220, height: 50, alignment: .center)
                .modifier(ClearButtonInTextField(text: $nameInput))

            Button(action: {
                self.nameOutput = nameInput
                buttonStyleToggler.toggle()
            }) {
                Text("Say Hello!")
            }
            .buttonStyle(GradientButtonStyle(pressedState: $buttonStyleToggler))
            
            if (nameOutput != "") {
                Text("Hello, \(nameOutput)")
            }
        }
    }
}


struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
