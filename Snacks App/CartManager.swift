//
//  CartManager.swift
//  Snacks App
//
//  Created by Luiz Correa on 06/08/2025.
//
import SwiftUI

class CartManager: ObservableObject {
    @Published var items: [Product] = []
    @Published var total: Int = 0
    
    func addToCart(product: Product) {
        items.append(product)
        total += product.price
    }
    
    func removeFromCart(product: Product) {
        items = items.filter { $0.id != product.id }
        total -= product.price
    }
}
