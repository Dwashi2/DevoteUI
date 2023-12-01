//
//  DevoteUIApp.swift
//  DevoteUI
//
//  Created by Daniel Washington Ignacio on 01/12/23.
//

import SwiftUI

@main
struct DevoteUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
