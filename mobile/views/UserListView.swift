//
//  UserListView.swift
//  mobile
//
//  Created by Andrii on 1/27/21.
//

import Foundation
import SwiftUI

struct UserListView: View {
    @State private var users: [User]?
    
    var body: some View {
        HStack {
            if let allUsers = users {
                List(allUsers) { user in
                    VStack(alignment: .leading) {
                        Text("\(user.firstName!) \(user.lastName!)").fontWeight(.bold)
                        Text(user.phoneNumber!).fontWeight(.regular)
                    }
                }
            } else {
                Text("No users saved")
            }
        }
        .onAppear(perform: {
            users = UserService.getAll()?.reversed()
        })
    }
}
