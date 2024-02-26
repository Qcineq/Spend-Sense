//
//  ContentView.swift
//  Spend Sense
//
//  Created by Jakub Kuciński on 26/02/2024.
//

import SwiftUI

struct ContentView: View {
    
    // Intro Visibility status
    @AppStorage("isFirstTime") private var isFirstTime: Bool = true
    
    // Active Tab
    @State private var activeTab: Tab = .recents
    
    var body: some View {
        TabView(selection: $activeTab) {
            Text("Ostatnie")
                .tag(Tab.recents)
                .tabItem { Tab.recents.tabContent }
            
            Text("Szukaj")
                .tag(Tab.search)
                .tabItem { Tab.search.tabContent }
            
            Text("Wykres")
                .tag(Tab.charts)
                .tabItem { Tab.charts.tabContent }
            
            Text("Ustawienia")
                .tag(Tab.settings)
                .tabItem { Tab.settings.tabContent }
        }
        .tint(appTint)
        .sheet(isPresented: $isFirstTime, content: {
            IntroScreen()
                .interactiveDismissDisabled()
        })
    }
}

#Preview {
    ContentView()
}
