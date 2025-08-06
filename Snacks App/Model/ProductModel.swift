//
//  ProductModel.swift
//  Snacks App
//
//  Created by Luiz Correa on 06/08/2025.
//

import SwiftUI

struct Product: Identifiable {
    var id: UUID = .init()
    var name: String
    var category: String
    var image: String
    var color: Color
    var price: Int
}

var productsList: [Product] = [
    Product(name: "Good Source", category: "Choco", image: "gs1", color: .pink,price: 8),
    Product(name: "Unreal Muffine", category: "Choco", image: "gs2", color: .yellow,price: 8),
    Product(name: "Twister Chips", category: "Chips", image: "gs3", color: .red,price: 8),
    Product(name: "Twister Chips", category: "Chips", image: "gs4", color: .green,price: 8),
    Product(name: "Regular Nature", category: "Chips", image: "gs5", color: .blue,price: 8),
    Product(name: "Dark Russet", category: "Chips", image: "gs6", color: .brown,price: 8),
    Product(name: "Smiths Chips", category: "Chips", image: "gs7", color: .orange,price: 8),
    Product(name: "Deep River", category: "Chips", image: "", color: .purple,price: 8),
]
