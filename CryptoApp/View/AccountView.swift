//
//  AccountView.swift
//  CryptoApp
//
//  Created by Iosi Pratama on 01/07/23.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        VStack{
            
            HStack {
                Text("Security")
                    .font(.system(.title, design: .rounded, weight: .regular))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Spacer()
            } .padding(.bottom, 12)
            
            VStack {
                HStack {
                    Text("Recovery Phrase")
                    Spacer()
                    Image(systemName: "chevron.right")
                    
                }
                Divider()
            } .padding(.bottom, 12)
            VStack {
                HStack {
                    Text("PIN and Biotmetrics Settings")
                    Spacer()
                    Image(systemName: "chevron.right")
                    
                }
                Divider()
            } .padding(.bottom, 48)
            
            
            HStack {
                Text("About Wallet")
                    .font(.system(.title, design: .rounded, weight: .regular))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Spacer()
            } .padding(.bottom, 12)
            
            VStack {
                HStack {
                    Text("Support")
                    Spacer()
                    Image(systemName: "chevron.right")
                    
                }
                Divider()
            } .padding(.bottom, 12)
            VStack {
                HStack {
                    Text("Legal")
                    Spacer()
                    Image(systemName: "chevron.right")
                    
                }
                Divider()
            }
            .padding(.bottom, 48)
            
            Button(role: .destructive, action: {
                
                print("Hello World")
                
            }, label: {
                
                Text("Sign out")
                
                
            })
            
            
            
            
            
            
            Spacer()
        }
        .padding(.horizontal, 16)
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
