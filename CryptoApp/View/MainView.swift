//
//  ContentView.swift
//  CryptoApp
//
//  Created by Iosi Pratama on 01/07/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        
        // Adding Tab Bar
        TabView{
            WalletView()
                .tabItem {
                    Image("wallet")
                }
                
            NFTView()
                .tabItem {
                    Image("nft")
                }
            HistoryTransactionView()
                .tabItem {
                    Image("activity")
                }
            
            
            AccountView()
                .tabItem {
                    Image("profile")
                }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
