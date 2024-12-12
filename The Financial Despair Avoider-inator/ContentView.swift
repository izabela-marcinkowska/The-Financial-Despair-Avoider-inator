//
//  ContentView.swift
//  The Financial Despair Avoider-inator
//
//  Created by Izabela Marcinkowska on 2024-12-06.
//

import SwiftUI

struct ContentView: View {
    var expenses = Expenses().expenses
    var body: some View {
        VStack {
            List(expenses) {
                Text($0.name)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
