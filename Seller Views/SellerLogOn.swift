//
//  SellerLogOn.swift
//  Farmly
//
//  Created by Ayush Bhatt on 4/6/22.
//

import SwiftUI

struct SellerLogOn: View {
    @State private var userEmail = "john.doe@email.com"
    var body: some View {
        ZStack {
            Color(red: 240/255, green: 240/255, blue: 240/255).ignoresSafeArea()
            VStack{
                Text("Farmly Sell ").font(Font.custom("Allison-Regular", size: 80))
                Image("farmly_logo_1").resizable().aspectRatio(contentMode: .fit).frame(width: 200, height: 200, alignment: .center)
                Divider()
                Text("Welcome").font(.title2)
                VStack {
                    Text("Email:").font(.title3)
                    TextField("john.doe@email.com", text: $userEmail).textFieldStyle(.roundedBorder).border(Color.black, width: 1)
                }.padding()
                VStack{
                    NavigationLink(destination: SellerLoggedIn()) {
                        Text("Log in")
                    }.buttonStyle(.borderedProminent)
                    Text("Or")
                    NavigationLink(destination: SellerAccountCreation()) {
                        Text("Create a new account")
                    }.buttonStyle(.borderedProminent)
                }
            }
        }
    }
}

struct SellerLogOn_Previews: PreviewProvider {
    static var previews: some View {
        SellerLogOn()
    }
}
