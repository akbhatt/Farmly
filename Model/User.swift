//
//  User.swift
//  Farmly
//
//  Created by Ayush Bhatt on 4/13/22.
//

import Foundation
import SwiftUI

struct User: Hashable, Codable, Identifiable{
    var id: Int
    var name: String
    var email: String
    var phone_number: Int = 0000000000
    var user_location: String
}

struct Produce: Hashable, Codable, Identifiable{
    var id: Int
    var produce_name: String
}

struct Shop: Hashable, Codable, Identifiable{
    var id: Int
    var shop_name: String
    var shop_location: String = "Detroit, MI"
    var shop_hours: String = "Open 6:00 AM thru 3:00 PM"
    var shop_address: String = "1234 Shop Street, Detroit, MI 48000"
    var shop_phone_number: String = "9999999999"
    var produce_for_sale = [Produce]()
}

struct Market: Hashable, Codable, Identifiable{
    var id: Int
    var market_name: String
    var market_location: String = "Detroit, MI"
    var market_hours: String = "Open 6:00 AM thru 3:00 PM"
    var market_address: String = "1234 Market Street, Detroit, MI 48000"
    var market_phone_number: String = "9999999999"
    var market_shops = [Shop]()
}
