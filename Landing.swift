//
//  Landing.swift
//  Farmly
//
//  Created by Ayush Bhatt on 4/8/22.
//

import SwiftUI

struct Landing: View {
    
    @State private var user_city = "Detroit, MI"
    var body: some View {
        NavigationView{
            ZStack {
                Color( red: 240/255, green: 240/255, blue: 240/255).ignoresSafeArea()
                VStack {
                    Text("Farmly ").font(Font.custom("Allison-Regular", size: 80))
                    Image("farmly_logo_1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 500, height: 300)
                    Divider()
                    Text("Select your city:").padding().font(.title2)
                    Picker(selection: $user_city, label: Text("userCityPicker")) {
                            Text("Detroit, MI").tag("Detroit, MI")
                            Text("Bloomfield, MI").tag("Bloomfield, MI")
                            Text("Sterling Heights, MI").tag("Sterling Heights, MI")
                            Text("Columbus, Ohio").tag("Columbus, Ohio")
                    }.padding([.all],5).pickerStyle(.automatic).background(.white)
                   
                    
                    NavigationLink(destination: Landing2(userCity: user_city)) {
                        Text("Confirm")
                    }.buttonStyle(.borderedProminent).padding()
                    
                }
            }
            .navigationTitle("Select your city").navigationBarHidden(true)
        }
    }
    
}

struct Landing_Previews: PreviewProvider {
    static var previews: some View {
        Landing()
    }
}
