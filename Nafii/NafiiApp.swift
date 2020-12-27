//
//  NafiiApp.swift
//  Nafii
//
//  Created by Juansyah - on 27/12/20.
//

import SwiftUI

@main
struct NafiiApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
