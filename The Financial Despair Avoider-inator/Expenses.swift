//
//  Expenses.swift
//  The Financial Despair Avoider-inator
//
//  Created by Izabela Marcinkowska on 2024-12-06.
//

import Foundation

class Expenses: Codable {
    var expenses: [Expense] = [
        Expense(
            name: "Lunch",
            amount: 23.4,
            description: "Restaurant visit",
            id: UUID()
        ),
        Expense(
            name: "Coffee",
            amount: 5.0,
            description: "Morning coffee",
            id: UUID()
        ),
        Expense(
            name: "Bus ticket",
            amount: 3.5,
            description: "Bus to city",
            id: UUID()
        )
    ]
    
    func addExpense(_ expense: Expense) {
        expenses.append(expense)
    }
}


struct Expense : Codable, Identifiable {
    var name: String
    var amount: Double
    var description: String
    var id: UUID
}
