//
//  ModelData.swift
//  Farmly
//
//  Created by Ayush Bhatt on 4/13/22.
//

import Foundation

var currentUser: User = User(id: Int.random(in: 1...20001), name: "John Doe", email: "john.doe@email.com", phone_number: 9999999999, user_location: "Detroit, MI")

var users: [User] = [
    User(id: Int.random(in: 1...20001), name: "Alex Smith", email: "alex.smith@email.com", phone_number: 2531839421, user_location: "Detroit, MI"),
    User(id: Int.random(in: 1...20001), name: "Robert Jones", email: "robert.jones@email.com", phone_number: 2631831723, user_location: "Detroit, MI"),
    User(id: Int.random(in: 1...20001), name: "Abigail Williams", email: "abigail_williams@email.com", phone_number: 2315323617, user_location: "Detroit, MI"),
    User(id: Int.random(in: 1...20001), name: "Olivia Johnson", email: "olivia.johnson@email.com", phone_number: 1854271737, user_location: "Detroit, MI"),
    User(id: Int.random(in: 1...20001), name: "Jake", email: "jake.home@email.com", phone_number: 1854271737, user_location: "Detroit, MI"),
    User(id: Int.random(in: 1...20001), name: "Joe", email: "joe.home@email.com", phone_number: 1854271737, user_location: "Detroit, MI"),
    User(id: Int.random(in: 1...20001), name: "Jake", email: "jake.home@email.com", phone_number: 1854271737, user_location: "Detroit, MI"),
    User(id: Int.random(in: 1...20001), name: "Beth", email: "beth.home@email.com", phone_number: 1854271737, user_location: "Detroit, MI"),
    User(id: Int.random(in: 1...20001), name: "Russell", email: "russell.home@email.com", phone_number: 1854271737, user_location: "Detroit, MI")
]

var allProduce: [Produce] = [
    Produce(id: 1000, produce_name: "🍅 Tomato"),
    Produce(id: 1001, produce_name: "🍎 Apple"),
    Produce(id: 1002, produce_name: "🥬 Kale"),
    Produce(id: 1003, produce_name: "🥦 Broccoli"),
    Produce(id: 1004, produce_name: "🍋 Lemon"),
    Produce(id: 1005, produce_name: "🥬 Cabbage"),
    Produce(id: 1006, produce_name: "🥬 Lettuce"),
    Produce(id: 1007, produce_name: "🌶 Red Pepper"),
    Produce(id: 1008, produce_name: "🥔 Potato"),
    Produce(id: 1009, produce_name: "🍄 Mushroom"),
    Produce(id: 1010, produce_name: "🧅 Onion")
]

func rProduceList(produceList: Array<Produce>) -> Array<Produce>{
    var randomProduceList = [Produce]()
    for _ in 1...6{
        randomProduceList.append(produceList.randomElement()!)
    }
    return randomProduceList
}

var shops: [Shop] = [
    Shop(id: Int.random(in: 1...20001), shop_name: "Jake's Home Produce", produce_for_sale: rProduceList(produceList: allProduce)),
    Shop(id: Int.random(in: 1...20001), shop_name: "Joe's Produce", produce_for_sale: rProduceList(produceList: allProduce)),
    Shop(id: Int.random(in: 1...20001), shop_name: "James's Stall", produce_for_sale: rProduceList(produceList: allProduce)),
    Shop(id: Int.random(in: 1...20001), shop_name: "Beth's Shop", produce_for_sale: rProduceList(produceList: allProduce)),
    Shop(id: Int.random(in: 1...20001), shop_name: "Russell's Veggies", produce_for_sale: rProduceList(produceList: allProduce))
]

var markets: [Market] = [
    Market(id: Int.random(in: 1...20001), market_name: "Northern Market", market_shops: shops),
    Market(id: Int.random(in: 1...20001), market_name: "Eastern Market", market_shops: shops),
    Market(id: Int.random(in: 1...20001), market_name: "Western Market", market_shops: shops),
    Market(id: Int.random(in: 1...20001), market_name: "Southern Market", market_shops: shops)
]
