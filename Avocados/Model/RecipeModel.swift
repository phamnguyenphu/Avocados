//
//  RecipeModel.swift
//  Avocados
//
//  Created by Pham Nguyen Phu on 21/04/2023.
//

import SwiftUI

struct Recipe: Identifiable {
    let id = UUID()
    let title: String
    let headline: String
    let image: String
    let rating: Int
    let serves: Int
    let preparation: Int
    let cooking: Int
    let instructions: [String]
    let ingredients: [String]
}
