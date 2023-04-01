//
//  ThePickersApp.swift
//  ThePickers
//
//  Created by Hasan Hüseyin Ali Gül on 31.03.2023.
//

import SwiftUI

@main
struct ThePickersApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
