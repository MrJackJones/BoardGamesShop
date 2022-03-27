//
//  Order.swift
//  BoardGamesShop
//
//  Created by Ivan on 25.03.2022.
//

import Foundation

struct Order {
    let firstName: String
    let lastName: String
    let address: String
    let phone: String
    let product: [Product]
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}
