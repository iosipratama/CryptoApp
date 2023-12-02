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
                    Image(systemName: "bitcoinsign.circle.fill")
                }
            HistoryTransactionView()
                .badge(3)
                .tabItem {
                    Image(systemName: "arrow.left.arrow.right.circle")
                }
            AccountView()
                .tabItem {
                    Image(systemName: "person.fill")
                }
        }

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
