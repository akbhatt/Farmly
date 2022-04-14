//
//  MarketDetail.swift
//  Farmly
//
//  Created by Ayush Bhatt on 4/6/22.
//

import SwiftUI

struct MarketDetail: View {
    var market: Market
    var body: some View {
        ZStack {
            Color( red: 240/255, green: 240/255, blue: 240/255).ignoresSafeArea()
            VStack{
                Text(market.market_hours).padding()
                Text(market.market_address).padding()
                Divider()
                Text("\(market.market_shops.count) Shops in \(market.market_name):").font(.title2).padding()
                List(market.market_shops){shop in
                    NavigationLink{
                        ShopDetail(shop: shop)
                    } label: {
                        HStack{
                            Text(shop.shop_name)
                            Spacer()
                            Text("\(Int.random(in: 1...10))A")
                        }.padding()
                    }
                }
                HStack{
                    Button("📞") {
                        let telephone = "tel://"
                        let formattedPhoneNumber = telephone + market.market_phone_number
                        guard let url = URL(string: formattedPhoneNumber) else { return }
                        UIApplication.shared.open(url)
                    }
                    Spacer()
                    Text("Farmly")
                    Spacer()
                    Button("💬"){
                        
                    }
                }.padding()
            }
        }
        .navigationTitle(market.market_name)
    }
}

struct MarketDetail_Previews: PreviewProvider {
    static var previews: some View {
        MarketDetail(market: markets[0])
    }
}
