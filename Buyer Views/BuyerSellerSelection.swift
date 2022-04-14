//
//  BuyerSellerSelection.swift
//  Farmly
//
//  Created by Ayush Bhatt on 4/8/22.
//

import SwiftUI

struct BuyerSellerSelection: View {
    var userCity: String
    var body: some View {
        ZStack {
            Color( red: 240/255, green: 240/255, blue: 240/255).ignoresSafeArea()
            NavigationView{
                VStack{
                    Divider()
                    VStack{
                        Text("\(markets.count) Markets:")
                        List(markets){market in
                            NavigationLink{
                                MarketDetail(market: market)
                            } label: {
                                Text(market.market_name)
                            }
                        }
                    }
                    VStack{
                        Text("\(shops.count) Shops:")
                        List(shops){shop in
                            NavigationLink{
                                ShopDetail(shop: shop)
                            } label: {
                                Text(shop.shop_name)
                            }
                        }
                    }
                }
                .navigationTitle("Shops and markets in \(userCity)").navigationBarTitleDisplayMode(.inline)
        }
        }
        
    }
}

struct BuyerSellerSelection_Previews: PreviewProvider {
    static var previews: some View {
        BuyerSellerSelection(userCity: "Detroit, MI")
    }
}
