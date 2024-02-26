//
//  IntroScreen.swift
//  Spend Sense
//
//  Created by Jakub Kuciński on 26/02/2024.
//

import SwiftUI

struct IntroScreen: View {
    
    // Visibility status
    @AppStorage("isFirstTime") private var isFirstTime: Bool = true
    
    var body: some View {
        VStack(spacing: 15) {
            Text("Co nowego w\nSpend Sense")
                .font(.largeTitle.bold())
                .multilineTextAlignment(.center)
                .padding(.top, 65)
                .padding(.bottom, 35)
            
            // Points View
            VStack(alignment: .leading, spacing: 25, content: {
                pointView(symbol: "dollarsign", title: "Transakcje", subtitle: "Kontroluj swoje wpływy i wydatki.")
                
                pointView(symbol: "chart.bar.fill", title: "Wykresy", subtitle: "Przeglądaj swoje transakcje za pomocą atrakcyjnych wykresów.")
                
                pointView(symbol: "magnifyingglass", title: "Zaawansowane filtry", subtitle: "Znajdź wydatki, które potrzebujesz za pomocą zaawansowanego wyszukiwania i filtrowania.")
            })
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 25)
            
            Spacer(minLength: 10)
            
            Button(action: {
                isFirstTime = false
            }, label: {
                Text("Kontynuuj")
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 14)
                    .background(appTint.gradient, in: .rect(cornerRadius: 12))
                    .contentShape(.rect)
            })
        }
        .padding(15)
    }
    
    // Point View
    @ViewBuilder
    func pointView(symbol: String, title: String, subtitle: String) -> some View {
        HStack(spacing: 20) {
            Image(systemName: symbol)
                .font(.largeTitle)
                .foregroundStyle(appTint.gradient)
                .frame(width: 45)
            
            VStack(alignment: .leading, spacing: 6, content: {
                Text(title)
                    .font(.title3)
                    .fontWeight(.semibold)
                
                Text(subtitle)
                    .foregroundStyle(.gray)
                    .lineLimit(4)
            })
        }
    }
}

#Preview {
    IntroScreen()
}
