//
//  NFTView.swift
//  CryptoApp
//
//  Created by Iosi Pratama on 08/12/23.
//

import SwiftUI

struct NFTView: View {
    
    
    @State var NFTList:[NFT] = [NFT]()
    var dataService = DataService()
    
    var body: some View {
        
        VStack(alignment:.leading) {
                
            HStack {
                Text("NFTs")
                    .font(.title)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                
                Spacer()
                
                Image("boredape")
                    .resizable()
                    .frame(width: 36, height: 36)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
            }
                
            ScrollView{
                    LazyVGrid(columns: [
                        GridItem(.flexible(), spacing: 16),
                        GridItem(.flexible(), spacing: 16)
                    ]) {
                        
                        ForEach(NFTList){ item in
                            
                            VStack{
                                Image(item.nftimage)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .clipShape(.rect(cornerRadius: 8))
                                Text(item.nftname)
                                    .font(.body)
                            }
                        
                    }
                    
                    
                }
                
                

            }
                
            
        }
        .padding(.horizontal, 8)
        
        .onAppear{
            // Call for the data
            NFTList = dataService.getNft()
        }
        
        
        
    }
}

#Preview {
    NFTView()
}
