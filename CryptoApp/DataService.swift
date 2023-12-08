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
    
    func getTransaction() -> [Transactions] {
        return [
            Transactions(id: UUID(), date: Date(), type: "Sent", token:"USDT", tokenAmount: 100, fiatAmount: 100),
            Transactions(id: UUID(), date: Date(), type: "Received", token:"USDC", tokenAmount: 50, fiatAmount: 10),
            Transactions(id: UUID(), date: Date(), type: "Received", token:"BTC", tokenAmount: 0.0042, fiatAmount: 10),
            Transactions(id: UUID(), date: Date(), type: "Sent", token:"USD", tokenAmount: 254, fiatAmount: 254),
        
        ]
        
    }
    
    func getNft() -> [NFT] {
        
        return [
            NFT(id: UUID(), nftimage: "Paris", nftname: "Winter Paris"),
            NFT(id: UUID(), nftimage: "Berlin", nftname: "Winter Berlin"),
            NFT(id: UUID(), nftimage: "Tokyo", nftname: "Winter Tokyo"),
            NFT(id: UUID(), nftimage: "SanFrancisco", nftname: "Winter SF"),
            NFT(id: UUID(), nftimage: "London", nftname: "Winter London")
        ]
    }
    
}
