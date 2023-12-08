//
//  NFTDataModel.swift
//  CryptoApp
//
//  Created by Iosi Pratama on 08/12/23.
//

import Foundation

struct NFT:Identifiable {
    var id: UUID = UUID()
    var nftimage: String
    var nftname: String
    
    init(id: UUID, nftimage: String, nftname: String) {
        self.id = id
        self.nftimage = nftimage
        self.nftname = nftname
    }
    
}
