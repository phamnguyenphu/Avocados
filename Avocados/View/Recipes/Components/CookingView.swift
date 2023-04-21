//
//  CookingView.swift
//  Avocados
//
//  Created by Pham Nguyen Phu on 22/04/2023.
//

import SwiftUI

struct CookingView: View {
    // MARK: - PROPERTY

    var recipe: Recipe

    // MARK: - BODY

    var body: some View {
        HStack(spacing: 12) {
            HStack {
                Image(systemName: "person.2")
                Text("Serves: \(recipe.serves)")
                    .lineLimit(1)
            }
            HStack {
                Image(systemName: "clock")
                Text("Prep: \(recipe.preparation)")
                    .lineLimit(1)
            }
            HStack {
                Image(systemName: "flame")
                Text("Cooking: \(recipe.cooking)")
                    .lineLimit(1)
            }
        }
    }
}

struct CookingView_Previews: PreviewProvider {
    static var previews: some View {
        CookingView(recipe: recipes[0])
    }
}
