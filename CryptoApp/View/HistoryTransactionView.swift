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
    
    
    // Function to format the date
    static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "d MMM yyyy HH:mm"
        return formatter
        
    }()
    
    
    var body: some View {
        
        
        VStack{
            VStack {
                Image("transaction")
                    .resizable()
                .frame(width: 90, height:90)
                
                Text("Transactions")
                    .font(.title)
                    .fontWeight(.semibold)
                
            }
            .padding(.bottom, 40)
            
            
            
            HStack{
                Text("All Transactions")
                Spacer()
                Image(systemName: "line.3.horizontal.decrease.circle")
            }
            .padding(.horizontal, 16)
            .padding(.bottom, 8)
            Divider()
            
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
            
            
            
            Spacer()
            
        }
        
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
