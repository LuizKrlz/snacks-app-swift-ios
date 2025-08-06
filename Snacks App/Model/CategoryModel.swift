//
//  CategoryModel.swift
//  Snacks App
//
//  Created by Luiz Correa on 06/08/2025.
//

import SwiftUI

struct CategoryModel: Identifiable, Hashable {
    var id: UUID = .init()
    var icon: String
    var title: String
}

var categoriesList: [CategoryModel] = [
    CategoryModel(icon: "", title: "All"),
    CategoryModel(icon: "volleyball.circle", title: "Choco"),
    CategoryModel(icon: "wand.and.rays", title: "Waffles"),
    CategoryModel(icon: "trophy", title: "Toffee")
]
