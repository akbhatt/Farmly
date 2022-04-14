//
//  ShopDetail.swift
//  Farmly
//
//  Created by Ayush Bhatt on 4/6/22.
//

import SwiftUI

struct ShopDetail: View {
    var shop: Shop
    var body: some View {
        ZStack {
            Color(red: 240/255, green: 240/255, blue: 240/255).ignoresSafeArea()
            VStack{
                Text(shop.shop_hours).padding()
                Text(shop.shop_address).padding()
                Divider()
                Text("On Sale Today (\(shop.produce_for_sale.count) items):").font(.title2).padding()
                List(shop.produce_for_sale){produce in
                    BuyerProduceRow(produce: produce)
                }
                HStack{
                    Button("📞") {
                        
                    }
                    Spacer()
                    Text("Farmly")
                    Spacer()
                    Button("💬"){
                        
                    }
                }.padding()
            }
        }
        .navigationTitle(shop.shop_name)
    }
}

struct ShopDetail_Previews: PreviewProvider {
    static var previews: some View {
        ShopDetail(shop: shops[0])
    }
}
