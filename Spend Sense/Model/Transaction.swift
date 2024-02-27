//
//  Transaction.swift
//  Spend Sense
//
//  Created by Jakub Kuciński on 27/02/2024.
//

import SwiftUI

struct Transaction: Identifiable {
    let id: UUID = .init()
    
    //Properties
    var title: String
    var remarks: String
    var amount: Double
    var dateAdded: Date
    var category: String
    var tintColor: String
    
    init(title: String, remarks: String, amount: Double, dateAdded: Date, category: Category, tintColor: TintColor) {
        self.title = title
        self.remarks = remarks
        self.amount = amount
        self.dateAdded = dateAdded
        self.category = category.rawValue
        self.tintColor = tintColor.color
    }
    
    // Extracting Color Value from tintColor String
    var color: Color {
        return tints.first(where: { $0.color == tintColor })?.value ?? appTint
    }
}

// Sample Transactions for UI Building
var sampleTransactions: [Transaction] = [
    .init(title: "iPhone 15 Pro Max", remarks: "Elektronika", amount: 7600, dateAdded: .now, category: .expense, tintColor: tints.randomElement()!),
    .init(title: "MacBook Pro", remarks: "Elektronika", amount: 11900, dateAdded: .now, category: .expense, tintColor: tints.randomElement()!),
    .init(title: "iCloud+", remarks: "Subskrypcja", amount: 49, dateAdded: .now, category: .expense, tintColor: tints.randomElement()!),
    .init(title: "Spotify", remarks: "Subskrypcja", amount: 29, dateAdded: .now, category: .expense, tintColor: tints.randomElement()!),
    .init(title: "Wypłata", remarks: "Pensja", amount: 10000, dateAdded: .now, category: .income, tintColor: tints.randomElement()!),
]
