//
//  WalletView.swift
//  CryptoApp
//
//  Created by Iosi Pratama on 01/07/23.
//

import SwiftUI

struct WalletView: View {
    var body: some View {
        
        VStack{
            // Top Area
            VStack(alignment: .leading){
                HStack{
                    VStack(alignment: .leading){
                        Text("Current Balance")
                            .padding(.bottom, 2)
                        Text("4.74 ETH")
                            .font(.largeTitle)
                            .bold()
                            .padding(.bottom, 2)
                        HStack{
                            Text("$3,142.43")
                                
                            HStack{
                                Image(systemName: "arrow.up")
                                    .foregroundColor(.green)
                                Text("4.2% Today")
                                    .foregroundColor(.green)
                            }
                            
                        }
                        .padding(.bottom, 10)
                        
                    }
                    Spacer()
                    Image("ETH2")
                }
                
                HStack{
                    Button {
                        
                    } label: {
                        Text("Send")
                    }
                    
                    .padding(.vertical, 15)
                    .frame(width: 180)
                    .foregroundColor(.white)
                    .background(Color("Primary"))
                    .cornerRadius(12)
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Text("Receive")
                    }
                    .padding(.vertical, 15)
                    .frame(width: 180)
                    .foregroundColor(.black)
                    .background(Color("Gray2"))
                    .cornerRadius(12)

                }
            }
            .padding(16)
            .background(.white)
            
            VStack{
                Text("Your Asset")
                    .bold()
                    .padding(.vertical, 12)
                Divider()
                HStack{
                    Image("ETH")
                    Text("Ethereum")
                    Spacer()
                    Text("143.12 ETH")
                }
                .padding(.horizontal, 12)
                .padding(.vertical, 8)
                Divider()
                HStack{
                    Image("BNC")
                    Text("Binance Smart Chain")
                    Spacer()
                    Text("13 BNB")
                }
                .padding(.horizontal, 12)
                .padding(.vertical, 8)
                Divider()
                HStack{
                    Image("DOT")
                    Text("Polkadot")
                    Spacer()
                    Text("13 DOT")
                }
                .padding(.horizontal, 12)
                .padding(.vertical, 8)
                Divider()
                HStack{
                    Image("NEAR")
                    Text("NEAR Protocol")
                    Spacer()
                    Text("0 NEAR")
                }
                .padding(.horizontal, 12)
                .padding(.vertical, 8)
                Divider()
                
                
            } .background(.white)
            
            Spacer()
        }
        
        .background(Color(red: 0.96, green: 0.96, blue: 0.96))
        
    }
       
}

struct WalletView_Previews: PreviewProvider {
    static var previews: some View {
        WalletView()
    }
}

