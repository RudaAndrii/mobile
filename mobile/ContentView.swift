//
//  ContentView.swift
//  mobile
//
//  Created by Andrii on 10/19/20.
//

import SwiftUI
import CoreData

struct ContentView: View {

    var body: some View {
        SignUp(signUp: SignUpModel())
    }
}


struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
