//
//  Product.swift
//  BoardGamesShop
//
//  Created by Ivan on 25.03.2022.
//

import Foundation

struct Product: Equatable {
    let id: Int
    let name: String
    let tagline: String
    let description: String
    let image: String
    let price: Int
    let manufacturer: Manufacturer
    let equipmens: [Equipment]
    var feedbacks: [Feedback]
    let category: Category
    let playerAge: Int
    let roundTime: Int
    let playerCountMin: Int
    let playerCountMax: Int
    let releaseYear: Int
    
    var playerCount: String {
        "\(playerCountMin) - \(playerCountMax)"
    }
    
    static func == (lhs: Product, rhs: Product) -> Bool {
        lhs.id == rhs.id
    }
}


struct Equipment {
    let name: String
}

struct Feedback {
    let authorName: String
    let text: String
}

struct DataBase {
    var name: Category
    var products: [Product]
}

enum Category: String {
    case party = "Вечериночные игры"
    case qizzes = "Викторины"
    case detective = "Детективные игры"
    case children = "Детские игры"
    case duel = "Дуэльные игры"
}

enum Manufacturer: String {
    case hobbyWorld = "Hobby World"
    case economicus = "Экономикус"
    case zvezda = "Звезда"
    case magellan = "Magellan"
    case gaga = "GaGa Games"
    case spinMaster = "Spin Master"
}
