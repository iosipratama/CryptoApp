//
//  DataService.swift
//  CryptoApp
//
//  Created by Iosi Pratama on 01/12/23.
//

import Foundation

struct DataService {
    
    // Adding data service in a function
    func getData() -> [CryptoBalance] {
        return [
            CryptoBalance(id: UUID(), tokenName:"Bitcoin", tokenLogo: "BTC", tokenBalance : 0.072, fiatBalance: 2714),
            CryptoBalance(id: UUID(), tokenName:"Ethereum", tokenLogo: "ETH", tokenBalance: 2.4, fiatBalance: 4920.31),
            CryptoBalance(id: UUID(), tokenName:"USD Coin", tokenLogo: "USDC", tokenBalance: 568, fiatBalance: 568),
            CryptoBalance(id: UUID(), tokenName:"USD Token", tokenLogo: "USDT", tokenBalance: 10, fiatBalance: 10),
            CryptoBalance(id: UUID(), tokenName:"Binance Coin", tokenLogo: "BNB", tokenBalance: 0, fiatBalance: 0),
            CryptoBalance(id: UUID(), tokenName:"Solana", tokenLogo: "SOL", tokenBalance: 56.42, fiatBalance: 3329.90),
            CryptoBalance(id: UUID(), tokenName:"Chainlink", tokenLogo: "LINK", tokenBalance: 0, fiatBalance: 0),
            CryptoBalance(id: UUID(), tokenName:"Cardano", tokenLogo: "ADA", tokenBalance: 0, fiatBalance: 0)
        
        ]
            
        
        
    }
    
}
