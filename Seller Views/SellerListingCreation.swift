//
//  SellerListingCreation.swift
//  Farmly
//
//  Created by Ayush Bhatt on 4/8/22.
//

import SwiftUI

struct SellerListingCreation: View {
    @State var onToggle: Bool = true
    @State var itemPrice = String(format: "%.2f",5.00)
    @State var openTime = "06:00"
    @State var closeTime = "03:00"
    let now = Text(Date.now.formatted(date: .long, time: .omitted))
    var body: some View {
        ZStack{
            Color(red: 240/255, green: 240/255, blue: 240/255).ignoresSafeArea()
            VStack{
                Text("John's Shop").font(.title).fontWeight(.bold)
                HStack{
                    Text("Open:")
                    TextField("5.00", text: $openTime).textFieldStyle(.roundedBorder)
                    Text("AM")
                    Text("thru")
                    TextField("5.00", text: $closeTime).textFieldStyle(.roundedBorder)
                    Text("PM")
                }.padding()
                
                Text("124 Hemmingway Street, Detroit, MI 42124").padding()
                Divider()
                Text("What's on sale today \(now)?").font(.title2).padding()
                List() {
                    HStack{
                        Toggle("Lettuce", isOn: $onToggle).toggleStyle(.button)
                        Spacer()
                        Text("@ $")
                        TextField("5.00", text: $itemPrice).textFieldStyle(.roundedBorder)
                    }.padding()
                    HStack{
                        Toggle("Tomatoes", isOn: $onToggle).toggleStyle(.button)
                        Spacer()
                        Text("@ $")
                        TextField("5.00", text: $itemPrice).textFieldStyle(.roundedBorder)

                    }.padding()
                    HStack{
                        Toggle("Green Peppers", isOn: $onToggle).toggleStyle(.button)
                        Spacer()
                        Text("@ $")
                        TextField("5.00", text: $itemPrice).textFieldStyle(.roundedBorder)

                    }.padding()
                    HStack{
                        Toggle("Kale", isOn: $onToggle).toggleStyle(.button)
                        Spacer()
                        Text("@ $")
                        TextField("5.00", text: $itemPrice).textFieldStyle(.roundedBorder)

                    }.padding()
                    HStack{
                        Toggle("Bell Pepper", isOn: $onToggle).toggleStyle(.button)
                        Spacer()
                        Text("@ $")
                        TextField("5.00", text: $itemPrice).textFieldStyle(.roundedBorder)
                    }.padding()
                    HStack{
                        Toggle("Cabbage", isOn: $onToggle).toggleStyle(.button)
                        Spacer()
                        Text("@ $")
                        TextField("5.00", text: $itemPrice).textFieldStyle(.roundedBorder)

                    }.padding()
                    HStack{
                        Toggle("Carrot", isOn: $onToggle).toggleStyle(.button)
                        Spacer()
                        Text("@ $")
                        TextField("5.00", text: $itemPrice).textFieldStyle(.roundedBorder)

                    }.padding()
                    HStack{
                        Toggle("Egg", isOn: $onToggle).toggleStyle(.button)
                        Spacer()
                        Text("@ $")
                        TextField("5.00", text: $itemPrice).textFieldStyle(.roundedBorder)

                    }.padding()
                }
                
                NavigationLink(destination: SellerLoggedIn()) {
                    Text("Save").padding().frame(maxWidth: .infinity).foregroundColor(.white).background(.blue).cornerRadius(6).padding()
                }
                
            }
        }
    }
}

struct SellerListingCreation_Previews: PreviewProvider {
    static var previews: some View {
        SellerListingCreation()
    }
}
