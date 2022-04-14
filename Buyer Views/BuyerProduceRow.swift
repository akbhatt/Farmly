//
//  BuyerProduceRow.swift
//  Farmly
//
//  Created by Ayush Bhatt on 4/13/22.
//

import SwiftUI

struct BuyerProduceRow: View {
    var produce: Produce
    var body: some View {
        HStack{
            Text(produce.produce_name).padding()
            Spacer()
            Text("@ $\(Int.random(in: 2...10))/lb").padding()
        }
    }
}

struct BuyerProduceRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BuyerProduceRow(produce: allProduce[0])
            BuyerProduceRow(produce: allProduce[1])
                }
                .previewLayout(.fixed(width: 300, height: 70))
    }
}
