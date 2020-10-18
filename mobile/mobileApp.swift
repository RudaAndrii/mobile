//
//  mobileApp.swift
//  mobile
//
//  Created by Andrii on 10/19/20.
//

import SwiftUI

@main
struct mobileApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
