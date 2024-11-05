//
//  GraphicsModel.swift
//  My Coctail
//
//  Created by Aleksey Ryabchenko on 11.11.2023.
//

import SwiftUI

struct CoctailModel: Identifiable {
    var id = UUID()
    let name: String
    let headline: String
    let ingridients: [String]
    let numberOfIngridients: [String]
    let recipe: String
    var image: String
    var colorGradient: [Color]
}
