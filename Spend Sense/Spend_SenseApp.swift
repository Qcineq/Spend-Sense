//
//  Spend_SenseApp.swift
//  Spend Sense
//
//  Created by Jakub Kuciński on 26/02/2024.
//

import SwiftUI
import WidgetKit

@main
struct Spend_SenseApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    WidgetCenter.shared.reloadAllTimelines()
                }
        }
        .modelContainer(for: [Transaction.self])
    }
}
