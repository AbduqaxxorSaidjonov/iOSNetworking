//
//  iOSNetworkingApp.swift
//  iOSNetworking
//
//  Created by Abduqaxxor on 9/4/22.
//

import SwiftUI

@main
struct iOSNetworkingApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainScreen()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
