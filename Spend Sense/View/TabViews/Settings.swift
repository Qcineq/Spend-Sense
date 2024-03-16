//
//  Settings.swift
//  Spend Sense
//
//  Created by Jakub Kuciński on 27/02/2024.
//

import SwiftUI

struct Settings: View {
    
    // User Properties
    @AppStorage("userName") private var userName: String = ""
    
    // App Lock Properties
    @AppStorage("isAppLockEnabled") private var isAppLockEnabled: Bool = false
    @AppStorage("lockWhenAppGoesBackground") private var lockWhenAppGoesBackground: Bool = false
    
    var body: some View {
        NavigationStack {
            List {
                Section("Nazwa użytkownika") {
                    TextField("Nazwa", text: $userName)
                }
                
                Section("Blokada aplikacji") {
                    Toggle("Włącz blokade aplikacji", isOn: $isAppLockEnabled)
                    
                    if isAppLockEnabled {
                        Toggle("Zablokuj gdy aplikacja zostanie zminimalizowana", isOn: $lockWhenAppGoesBackground)
                        
                    }
                }
            }
            .navigationTitle("Ustawienia")
        }
    }
}

#Preview {
    Settings()
}
