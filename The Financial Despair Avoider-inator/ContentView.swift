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
        NavigationStack {
            
            List {
                ForEach (expenses) { expense in
                    HStack {
                        VStack (alignment: .leading) {
                            Text(expense.name)
                                .font(.headline)
                            Text(expense.description)
                        }
                        Spacer()
                        VStack(alignment: .leading) {
                            Text(expense.amount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                        }
                    }
                }
            }
            .navigationTitle("My Expenses")
            .toolbar {
                Button {
                    
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
