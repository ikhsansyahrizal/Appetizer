//
//  Appetizer.swift
//  Appetizers
//
//  Created by Ikhsan on 28/03/24.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
    
}


struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}


struct MockData {
    static let sampleAppetizer = Appetizer(id: 001,
                                           name: "Apple",
                                           description: "This is Apple, it is a popular fruit as appetizer. it taste sweet and sour and have a lot of vitamins",
                                           price: 9.99,
                                           imageURL: "",
                                           calories: 99,
                                           protein: 99,
                                           carbs: 99)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
    static let orderItemOne = Appetizer(id: 0001,
                                           name: "Apple",
                                           description: "This is Apple, it is a popular fruit as appetizer. it taste sweet and sour and have a lot of vitamins",
                                           price: 9.99,
                                           imageURL: "",
                                           calories: 99,
                                           protein: 99,
                                           carbs: 99)
    
    static let orderItemTwo = Appetizer(id: 0002,
                                           name: "Banana",
                                           description: "This is Apple, it is a popular fruit as appetizer. it taste sweet and sour and have a lot of vitamins",
                                           price: 9.99,
                                           imageURL: "",
                                           calories: 99,
                                           protein: 99,
                                           carbs: 99)
    
    
    static let orderItemThree = Appetizer(id: 0003,
                                           name: "Orange",
                                           description: "This is Apple, it is a popular fruit as appetizer. it taste sweet and sour and have a lot of vitamins",
                                           price: 9.99,
                                           imageURL: "",
                                           calories: 99,
                                           protein: 99,
                                           carbs: 99)
    
    
    static let orederItem = [orderItemOne, orderItemTwo, orderItemThree]
}
