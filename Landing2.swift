//
//  Landing2.swift
//  Farmly
//
//  Created by Ayush Bhatt on 4/8/22.
//

import SwiftUI

struct Landing2: View {
    @State private var userSelection="Buyer"
    var userCity: String
    var body: some View {
        ZStack {
            Color( red: 240/255, green: 240/255, blue: 240/255).ignoresSafeArea()
            VStack {
                Text("Farmly ").font(Font.custom("Allison-Regular", size: 80))
                Text(userCity).font(.title2)
                Image("farmly_logo_1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 500, height: 300)
                Divider().padding()
                VStack{
                    Text("Are you a buyer or seller?").font(.title2).padding()
                
                    
                        Picker(selection: $userSelection, label: Text("userSelectionPicker")) {
                            Text("Buyer").tag("Buyer")
                            Text("Seller").tag("Seller")
                        }.pickerStyle(.segmented).padding()
                    
                }
                
                if userSelection == "Buyer"{
                    NavigationLink(
                        destination: BuyerSellerSelection(userCity: userCity)
                    ) {
                        Text("Order")
                    }.buttonStyle(.borderedProminent)
                } else {
                    NavigationLink(
                        destination: SellerLogOn()
                    ) {
                        Text("Sell")
                    }.buttonStyle(.borderedProminent)
                }
                
            }
        }
        .navigationTitle("Buyer or Seller").navigationBarTitleDisplayMode(.inline)
    }
}

struct Landing2_Previews: PreviewProvider {
    static var previews: some View {
        Landing2(userCity: "Detroit, MI")
    }
}
