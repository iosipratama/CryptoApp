//
//  CryptoBalance.swift
//  CryptoApp
//
//  Created by Iosi Pratama on 01/12/23.
//

import Foundation

struct CryptoBalance:Identifiable {
    var id: UUID = UUID()
    var tokenName: String
    var tokenLogo: String
    var tokenBalance: Double
    var fiatBalance: Double
    var tokenTicker: String
    
    
    // Add initializer
    init(id: UUID, tokenName: String, tokenLogo: String, tokenBalance: Double, fiatBalance: Double, tokenTicker: String) {
        self.id = id
        self.tokenName = tokenName
        self.tokenLogo = tokenLogo
        self.tokenBalance = tokenBalance
        self.fiatBalance = fiatBalance
        self.tokenTicker = tokenTicker
    }
    
}
