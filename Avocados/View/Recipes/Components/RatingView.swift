//
//  RatingView.swift
//  Avocados
//
//  Created by Pham Nguyen Phu on 22/04/2023.
//

import SwiftUI

struct RatingView: View {
    // MARK: - PROPERTY

    var recipe: Recipe

    // MARK: - BODY

    var body: some View {
        HStack(spacing: 4) {
            ForEach(0 ..< (recipe.rating), id: \.self) { _ in
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(recipe: recipes[0])
    }
}
