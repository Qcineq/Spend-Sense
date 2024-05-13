//
//  ChartModel.swift
//  Spend Sense
//
//  Created by Jakub Kuciński on 13/05/2024.
//

import SwiftUI

struct ChartGroup: Identifiable {
    let id: UUID = .init()
    var date: Date
    var categories: [ChartCategory]
    var totalIncome: Double
    var totalExpense: Double
}

struct ChartCategory: Identifiable {
    let id: UUID = .init()
    var totalValue: Double
    let category: Category
}
