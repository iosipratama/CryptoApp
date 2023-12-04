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
            CryptoBalance(id: UUID(), tokenName:"Bitcoin", tokenLogo: "BTC", tokenBalance : 0.072, fiatBalance: 2714, tokenTicker: "BTC"),
            CryptoBalance(id: UUID(), tokenName:"Ethereum", tokenLogo: "ETH", tokenBalance: 2.4, fiatBalance: 4920.31, tokenTicker: "ETH"),
            CryptoBalance(id: UUID(), tokenName:"USD Coin", tokenLogo: "USDC", tokenBalance: 568, fiatBalance: 568, tokenTicker: "USDC"),
            CryptoBalance(id: UUID(), tokenName:"USD Tether", tokenLogo: "USDT", tokenBalance: 10, fiatBalance: 10, tokenTicker: "USDT"),
            CryptoBalance(id: UUID(), tokenName:"Binance Coin", tokenLogo: "BNB", tokenBalance: 0, fiatBalance: 0, tokenTicker: "BNB"),
            CryptoBalance(id: UUID(), tokenName:"Solana", tokenLogo: "SOL", tokenBalance: 56.42, fiatBalance: 3329.90, tokenTicker: "SOL"),
            CryptoBalance(id: UUID(), tokenName:"Chainlink", tokenLogo: "LINK", tokenBalance: 0, fiatBalance: 0, tokenTicker: "LINK"),
            CryptoBalance(id: UUID(), tokenName:"Cardano", tokenLogo: "ADA", tokenBalance: 0, fiatBalance: 0, tokenTicker: "ADA")
        
        ]
            
        
        
    }
    
}
