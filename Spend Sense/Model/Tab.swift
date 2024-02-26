//
//  Tab.swift
//  Spend Sense
//
//  Created by Jakub Kuciński on 26/02/2024.
//

import SwiftUI

enum Tab: String {
    case recents = "Ostatnie"
    case search = "Szukaj"
    case charts = "Wykres"
    case settings = "Ustawienia"
    
    @ViewBuilder
    var tabContent: some View {
        switch self {
        case .recents:
            Image(systemName: "calendar")
            Text(self.rawValue)
        case .search:
            Image(systemName: "magnifyingglass")
            Text(self.rawValue)
        case .charts:
            Image(systemName: "chart.bar.xaxis")
            Text(self.rawValue)
        case .settings:
            Image(systemName: "gearshape")
            Text(self.rawValue)
        }
    }
}
