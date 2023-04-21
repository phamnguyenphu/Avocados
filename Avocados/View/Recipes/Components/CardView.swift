//
//  CardView.swift
//  Avocados
//
//  Created by Pham Nguyen Phu on 21/04/2023.
//

import SwiftUI

struct CardView: View {
    // MARK: - PROPERTY
    
    var recipe: Recipe
    
    // MARK: - BODY
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay(alignment: .topTrailing) {
                    Image(systemName: "bookmark")
                        .foregroundColor(.white)
                        .font(.title.weight(.light))
                        .imageScale(.small)
                        .shadow(color: Color("ColorBlackTransparentLight"), radius: 2)
                        .padding(20)
                }
            
            Group {
                Text(recipe.title)
                    .font(.system(.title, design: .serif))
                    .foregroundColor(Color("ColorGreenAdaptive"))
                    .fontWeight(.bold)
                
                Text(recipe.headline)
                    .font(.system(.body, design: .serif))
                    .italic()
                
                RatingView(recipe: recipe)
                
                CookingView(recipe: recipe)
                    .font(.system(.footnote, design: .serif))
                    .padding(.bottom)
            }
            .padding(.horizontal)
        }
        .foregroundColor(.gray)
        .padding(.bottom)
        .background(.white)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentLight"), radius: 10)
        .padding(20)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(recipe: recipes[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
