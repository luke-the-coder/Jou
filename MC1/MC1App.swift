//
//  MC1App.swift
//  MC1
//

import SwiftUI

@main
struct MC1App: App {
    let persistenceController = PersistenceController.shared
    var body: some Scene {
        WindowGroup {
            TabView{
                TodayView().tabItem{
                    Label("Today", systemImage: "sun.max.fill")
                }
                ArchiveView().tabItem{
                    Label("Archive", systemImage: "archivebox.fill")
                }
                FocusView().tabItem{
                    Label("Focus", systemImage: "books.vertical.fill")
                }
                

            }.environment(\.managedObjectContext,
                           persistenceController.container.viewContext)
        }
    }
}

