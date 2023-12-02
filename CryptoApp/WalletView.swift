//
//  WalletView.swift
//  CryptoApp
//
//  Created by Iosi Pratama on 01/07/23.
//

import SwiftUI

struct WalletView: View {
    
    @State var balanceList:[CryptoBalance] = [CryptoBalance]()
    var dataService = DataService()
    
   
    
    
    var body: some View {
        
        VStack{
            // Top Area
            VStack{
                    VStack(){
                        Text("Account Balance")
                            .padding(.bottom, 2)
                        Text("$4.312")
                            .font(.largeTitle)
                            .bold()
                            .padding(.bottom, 2)
                            HStack{
                                Image(systemName: "arrow.up")
                                    .foregroundColor(.green)
                                Text("4.2% Today")
                                    .foregroundColor(.green)
                            }
                            
                        
                        .padding(.bottom, 10)
                        
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
                // Text("Your Asset")
                //    .bold()
                //    .padding(.vertical, 12)
                // Divider()
                
                
                List(balanceList) { balance in
                    HStack{
                        Image(balance.tokenLogo)
                            .resizable()
                            .frame(width: 40, height: 40)
                        Text(balance.tokenName)
                        Spacer()
                        
                        VStack(alignment:.trailing) {
                            // Convert double type to string
                            Text(String(balance.tokenBalance) + " " + balance.tokenTicker)
                                .font(.headline)
                            Text("$" + " " + String(balance.fiatBalance))
                        }
                       
                       
                    }
                }
                
                
                
            } .background(.white)
            
            Spacer()
        }
        
        .background(Color(red: 0.96, green: 0.96, blue: 0.96))
        
        .onAppear{
            // Call for the data
            balanceList = dataService.getData()
        }
        
    }
    
       
}

struct WalletView_Previews: PreviewProvider {
    static var previews: some View {
        WalletView()
    }
}

