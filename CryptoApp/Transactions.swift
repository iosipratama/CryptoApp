//
//  Transactions.swift
//  CryptoApp
//
//  Created by Iosi Pratama on 05/12/23.
//

import Foundation

struct Transactions:Identifiable {
    var id: UUID = UUID()
    var date: Date
    var type: String
    var token: String
    var tokenAmount: Double
    var fiatAmount: Double
    
    // Add initializer
    init(id: UUID, date: Date, type: String, token: String, tokenAmount: Double, fiatAmount: Double) {
        self.id = id
        self.date = date
        self.type = type
        self.token = token
        self.tokenAmount = tokenAmount
        self.fiatAmount = fiatAmount
    }
    
    
}
