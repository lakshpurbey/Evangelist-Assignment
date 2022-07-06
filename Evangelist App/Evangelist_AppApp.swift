//
//  Evangelist_AppApp.swift
//  Evangelist App
//
//  Created by Laksh Purbey on 27/06/2022.
//

import SwiftUI

@main
struct Evangelist_AppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
//            ContentView()
            HomeView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
