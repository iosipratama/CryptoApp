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
        
        // Caculate the total account value
        let totalFiatBalance:Double = balanceList.reduce(0.0) { (result, balance) in
            return result + balance.fiatBalance
        }
        
        // Show it in decimal + maximum 2 decimal
        var formattedTotalFiatBalance: String {
            let numberFormatter = NumberFormatter()
            numberFormatter.numberStyle = .decimal
            numberFormatter.maximumFractionDigits = 2
            
            return numberFormatter.string(from: NSNumber(value: totalFiatBalance)) ?? ""
        }
        
        
        VStack{
            
            // Title
            HStack {
                Text("Crypto")
                    .font(.system(.title, design: .rounded, weight: .regular))
                    
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                
                Spacer()
                
                Image("boredape")
                    .resizable()
                    .frame(width: 36, height: 36)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
            }
            
            
            // Top Area
            VStack{
                HStack {
                    VStack(alignment:.leading){
                            Text("Account Value")
                                .padding(.bottom, 2)
                        
                        
                        HStack(alignment:.firstTextBaseline) {
                            
                            Text("$ " + formattedTotalFiatBalance)
                                .font(.system(.largeTitle, design: .rounded))
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
                    }
                    
                    Spacer()
                }
                
                
                HStack(){
                    Button {
                        
                    } label: {
                        HStack{
                            Image(systemName: "arrow.up")
                                .fontWeight(.bold)
                            Text("Send")
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        }
                        
                    }
                    .padding(.vertical, 12)
                    .padding(.horizontal, 24)
                    .foregroundColor(Color("BrandPrimary"))
                    .background(Color("BrandSecondary"))
                    .cornerRadius(12)
                    
                    Button {
                        
                    } label: {
                        HStack {
                            Image(systemName: "arrow.up")
                                .fontWeight(.bold)
                            Text("Receive")
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        }
                    }
                    .padding(.vertical, 12)
                    .padding(.horizontal, 24)
                    .foregroundColor(Color("BrandPrimary"))
                    .background(Color("BrandSecondary"))
                    .cornerRadius(12)
                    
                    Spacer()

                }
            }
            .padding(16)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
            
            VStack{
                Text("Your Asset")
                    .bold()
                    .padding(.vertical, 8)
                Divider()
                
                ScrollView{
                    
                    // Showing list of the asset in ForEach
                    ForEach(balanceList){ balance in
                        HStack{
                            Image(balance.tokenLogo)
                                .resizable()
                                .frame(width: 40, height: 40)
                            Text(balance.tokenName)
                            Spacer()
                            
                            VStack(alignment:.trailing) {
                                // Convert double type to string
                                Text(String(balance.tokenBalance) + " " + balance.tokenTicker)
                                    .fontWeight(.medium)
                                Text("$" + " " + String(balance.fiatBalance))
                                    .foregroundStyle(.gray)
                            }
                            
                           
                        }
                        .padding(.horizontal, 16)
                        .padding(.bottom, 8)
                        
                        
                    }
                    
                    .font(.system(.body, design: .rounded, weight: .regular))
                    
                }
                
                
            } 
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
            
            Spacer()
        }
        // Change body font to rounded
        .font(.system(.body, design: .rounded, weight: .regular))
        .padding(.horizontal, 8)
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

