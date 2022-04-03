//
//  Product.swift
//  BoardGamesShop
//
//  Created by Ivan on 25.03.2022.
//

import Foundation

struct Product {
    let name: String
    let tagline: String
    let description: String
    let image: String
    let price: Int
    let manufacturer: Manufacturer
    let equipmens: [Equipment]
    var feedbacks: [Feedback]
    let playerAge: Int
    let roundTime: Int
    let playerCountMin: Int
    let playerCountMax: Int
    let releaseYear: Int
    
    var playerCount: String {
        "\(playerCountMin) - \(playerCountMax)"
    }
}


struct Equipment {
    let name: String
}

struct Feedback {
    let authorName: String
    let text: String
}

struct Category {
    let name: String
    let products: [Product]
}

enum Manufacturer: String {
    case hobbyWorld = "Hobby World"
    case economicus = "Экономикус"
    case zvezda = "Звезда"
    case magellan = "Magellan"
    case gaga = "GaGa Games"
    case spinMaster = "Spin Master"
}
