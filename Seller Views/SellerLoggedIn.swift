//
//  SellerLoggedIn.swift
//  Farmly
//
//  Created by Ayush Bhatt on 4/8/22.
//

import SwiftUI

struct SellerLoggedIn: View {
    var body: some View {
        ZStack {
            Color(red: 240/255, green: 240/255, blue: 240/255).ignoresSafeArea()
                VStack{
                        VStack{
                                Text("Farmly Sell  ")
                                .font(.custom("Allison-Regular", size: 80)).multilineTextAlignment(.center)
                                Image("farmly_logo_1")
                                    .resizable().aspectRatio(contentMode: .fit).frame(width: 200, height: 300, alignment: .center)
                                Divider()
                                Text("Welcome, John Doe")
                                .font(.title).padding()
                            NavigationLink(destination: SellerListingCreation()) {
                                Text("Create a new listing").padding().frame(maxWidth: .infinity).foregroundColor(.white).background(.blue).cornerRadius(6).padding()
                            }
                            NavigationLink(destination: SellerAccountCreation()) {
                                Text("My Account").padding().frame(maxWidth: .infinity).foregroundColor(.black).background(.quaternary).cornerRadius(6).padding()
                            }
                          
                            }
                        
                        Spacer()
                        HStack{
                        
                            NavigationLink(destination: SellerLogOn()) {
                                Text("Log Out")
                            }.buttonStyle(.bordered).foregroundColor(.red)
                        }
                }
            }
        .navigationTitle("Farmly Sell Home").navigationBarHidden(true)
        }
}

struct SellerLoggedIn_Previews: PreviewProvider {
    static var previews: some View {
        SellerLoggedIn()
    }
}
