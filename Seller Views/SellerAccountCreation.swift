//
//  SellerAccountCreation.swift
//  Farmly
//
//  Created by Ayush Bhatt on 4/7/22.
//

import SwiftUI

struct SellerAccountCreation: View {
        @State private var sell_name="John Doe"
        @State private var sell_shop="John's Shop"
        @State private var sell_email="john.doe@email.com"
        @State private var sell_phone="248 123 4567"
        @State private var sell_address="1234 Hemmingway St"
        @State private var sell_city="Detroit, MI"
        @State private var is_seller_market = false
        @State private var sell_market="Eastern Market"
        @State private var sell_market_stall="6A"
        
        
        var body: some View {
            ZStack {
                Color(red: 240/255, green: 240/255, blue: 240/255).ignoresSafeArea()
                ScrollView {
                    VStack {
                        Group{
                        Text("Name:")
                            TextField("John Doe", text: $sell_name).textFieldStyle(.roundedBorder).padding([.leading,.trailing],15)
                        Text("Shop Name (and screen name):")
                        TextField("John's Shop", text: $sell_shop).textFieldStyle(.roundedBorder).padding([.leading,.trailing],15)
                        Text("Email:")
                        TextField("John.doe@email.com", text: $sell_email).textFieldStyle(.roundedBorder).padding([.leading,.trailing],15)
                        }

                        Group{
                        Text("Phone (Optional):")
                        TextField("248 123 4567", text: $sell_phone).textFieldStyle(.roundedBorder).padding([.leading,.trailing],15)
                            Divider()
                        Text("Which city are you in?:")
                        Picker(selection: $sell_city, label: Text("sellCityPicker")) {
                                Text("Detroit, MI").tag("Detroit, MI")
                                Text("Bloomfield, MI").tag("Bloomfield, MI")
                                Text("Sterling Heights, MI").tag("Sterling Heights, MI")
                                Text("Columbus, Ohio").tag("Columbus, Ohio")
                        }.padding([.all],5).pickerStyle(.automatic)
                            Divider()
                        Text("Address:")
                        TextField("1234 Hemmingway St", text: $sell_address).textFieldStyle(.roundedBorder).padding([.leading,.trailing],15)
                        }
                        Divider()
                        Group{
                            Text("Are you a market? (Optional):")
                            Picker(selection: $is_seller_market, label: Text("isUserMarketPicker")) {
                                Text("Yes").tag(true)
                                Text("No").tag(false)
                            }.padding().pickerStyle(.segmented)
                            Text("Which market are you in? (Optional)")
                            Picker(selection: $sell_market, label: Text("sellMarketPicker")) {
                                Text("Eastern Market").tag("Eastern Market")
                                Text("Western Market").tag("Western Market")
                                Text("Northern Market").tag("Northern Market")
                                Text("Southern Market").tag("Southern Market")
                            }.padding([.all],5).pickerStyle(.automatic)
                            Text("Market Stall Number (Optional)")
                            TextField("1A", text: $sell_market_stall).textFieldStyle(.roundedBorder).padding([.leading,.trailing],15) }

                        NavigationLink(destination: SellerLoggedIn(
                        )) {
                            Text("Save")
                        }.buttonStyle(.borderedProminent)
                    }
                }
            }
            .navigationBarTitle("Account Details").navigationBarTitleDisplayMode(.inline)
        }
}

struct SellerAccountCreation_Previews: PreviewProvider {
    static var previews: some View {
        SellerAccountCreation()
    }
}
