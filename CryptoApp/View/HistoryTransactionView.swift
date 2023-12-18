//
//  HistoryTransactionView.swift
//  CryptoApp
//
//  Created by Iosi Pratama on 01/07/23.
//

import SwiftUI

struct HistoryTransactionView: View {
    
    
    @State var transactionList:[Transactions] = [Transactions]()
    var dataService = DataService()
    
    
     //
    @State private var selectedTransaction: Transactions?
    
    
    // Function to format the date
    static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "d MMM yyyy HH:mm"
        return formatter
        
    }()
    
    
    var body: some View {
        
        
        VStack{
            // Title
            HStack {
                Text("Activities")
                    .font(.system(.title, design: .rounded, weight: .regular))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                
                Spacer()
                
                Image("boredape")
                    .resizable()
                    .frame(width: 36, height: 36)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
            }
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    Text("All Crypto")
                        .padding(.vertical, 8)
                        .padding(.horizontal, 12)
                        .background(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 100))
                    
                    HStack {
                        Image("BTC")
                            .resizable()
                            .frame(width: 18, height: 18)
                        Text("BTC")
                    }
                    .padding(.vertical, 8)
                    .padding(.horizontal, 12)
                    .clipShape(RoundedRectangle(cornerRadius: 100))
                    
                    HStack {
                        Image("ETH")
                            .resizable()
                            .frame(width: 18, height: 18)
                        Text("ETH")
                    }
                    .padding(.vertical, 8)
                    .padding(.horizontal, 12)
                    .clipShape(RoundedRectangle(cornerRadius: 100))
                    
                    HStack {
                        Image("USDC")
                            .resizable()
                            .frame(width: 18, height: 18)
                        Text("USDC")
                    }
                    .padding(.vertical, 8)
                    .padding(.horizontal, 12)
                    .clipShape(RoundedRectangle(cornerRadius: 100))
                    
                    HStack {
                        Image("USDT")
                            .resizable()
                            .frame(width: 18, height: 18)
                        Text("USDT")
                    }
                    .padding(.vertical, 8)
                    .padding(.horizontal, 12)
                    .clipShape(RoundedRectangle(cornerRadius: 100))
                        
                }
            }
            
            .padding(.vertical, 12)
            
            
            
            VStack{
                
                // Transaction List
                
                ScrollView{
                        
                        ForEach(transactionList){ transaction in
                                
                                HStack{
                                    
                                    if transaction.type == "Sent" {
                                       
                                        Image(systemName: "arrow.up.forward")
                                            .fontWeight(.semibold)
                                            .padding()
                                            .background(.blue)
                                            .foregroundStyle(.white)
                                            .cornerRadius(100)
                                            .padding(.trailing, 4)
                                        
                                        VStack(alignment:.leading){
                                            Text("\(transaction.type)" + " " + "\(transaction.token)")
                                            Text("\(transaction.date, formatter: Self.dateFormatter)")
                                                .font(.callout)
                                                
                                        }
                                        Spacer()
                                        Text(String(transaction.tokenAmount) + " \(transaction.token)")
                                        
                                    } else if transaction.type == "Received" {
                                        
                                        Image(systemName: "arrow.down.left")
                                            .fontWeight(.semibold)
                                            .padding()
                                            .background(.green)
                                            .foregroundStyle(.white)
                                            .cornerRadius(100)
                                            .padding(.trailing, 4)
                                        
                                        VStack(alignment:.leading){
                                            Text("\(transaction.type)" + " " + "\(transaction.token)")
                                            Text("\(transaction.date, formatter: Self.dateFormatter)")
                                        }
                                        Spacer()
                                        Text(String(transaction.tokenAmount) + " \(transaction.token)")
                                        
                                    }
                                    
                                    
                                    
                                }
                                .padding(.horizontal, 16)
                                .padding(.vertical, 8)
                                
                                Divider()
                                    .padding(.horizontal, 16)
                                
                            }
                    
                    
                }
            }
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
            
            
            
            Spacer()
            
        }
        .font(.system(.body, design: .rounded, weight: .regular))
        
        .padding(.horizontal, 8)
        .background(Color(red: 0.96, green: 0.96, blue: 0.96))
        
        
        .onAppear{
            // Call for the data
            transactionList = dataService.getTransaction()
        }
        
    }
}

struct HistoryTransactionView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryTransactionView()
    }
}
