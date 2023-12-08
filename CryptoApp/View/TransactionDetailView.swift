//
//  TransactionDetailView.swift
//  CryptoApp
//
//  Created by Iosi Pratama on 05/12/23.
//

import SwiftUI

struct TransactionDetailView: View {
    var body: some View {
    
        VStack{
            Text("12.19" + " " + "ETH")
                .font(.title)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(.bottom, 4)
            Text("$" + " " + "19.390")
            
            ZStack{
                Divider()
                Image(systemName: "arrow.up.forward")
                    .fontWeight(.semibold)
                    .padding()
                    .background(.blue)
                    .foregroundStyle(.white)
                    .cornerRadius(100)
                    .padding(.trailing, 4)
                
            }
            .padding(.vertical, 32)
            
            
            // Detail Transaction
            VStack {
                
                VStack {
                    HStack{
                        Text("Payment to")
                        Spacer()
                        Text("bc1qndnda...1v113ndalda")
                    }
                    
                    Divider()
                        .padding(.vertical, 8)
                }
                
                VStack {
                    HStack{
                        Text("Pay with")
                        Spacer()
                        Text("ETH Wallet")
                    }
                    
                    Divider()
                        .padding(.vertical, 8)
                }
                
                VStack {
                    HStack{
                        HStack {
                            Text("Network Fee")
                            Image(systemName: "info.circle")
                        }
                        
                        Spacer()
                        Text("0.00002389" + " " + "ETH")
                    }
                    
                    Divider()
                        .padding(.vertical, 8)
                }
                
                VStack {
                    HStack{
                        Text("Total")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        Spacer()
                        VStack(alignment:.trailing) {
                            Text("12.29002389" + " " + "ETH")
                            Text("$ " + "19,930.85")
                        }
                        
                    }
                    
                    Divider()
                        .padding(.vertical, 8)
                }
                
                VStack {
                    HStack{
                        Text("Date")
                        Spacer()
                        Text("5 Dec 2023 20:00")
                    }
                    
                    Divider()
                        .padding(.vertical, 8)
                }
                
                VStack {
                    HStack{
                        Text("Status")
                        Spacer()
                        HStack {
                            Circle()
                                .frame(width:6)
                                .foregroundStyle(.yellow)
                            Text("Pending")
                        }
                        
                    }
                    
                    Divider()
                        .padding(.vertical, 8)
                }
                
                
            }
            .padding()
            
            
            
        }
        
        
        
    }
}

#Preview {
    TransactionDetailView()
}
