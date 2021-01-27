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
        NavigationView {
            VStack(spacing: 60) {
                SignUp()
                
                HStack (spacing: 50) {
                    NavigationLink(destination: UserListView()) {
                        Text("Users")
                    }
                    NavigationLink(destination: PhotoView()) {
                        Text("Photos")
                    }
                }
            }
        }
        .navigationTitle("Sign Up")


    }
}
