//
//  RecipeDetailView.swift
//  Avocados
//
//  Created by Pham Nguyen Phu on 22/04/2023.
//

import SwiftUI

struct RecipeDetailView: View {
    // MARK: - PROPERTY
    
    var recipe: Recipe
    
    // MARK: - BODY
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center) {
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()
                
                Group {
                    // Title
                    Text(recipe.title)
                        .font(.system(.largeTitle, design: .serif))
                        .foregroundColor(Color("ColorGreenAdaptive"))
                        .fontWeight(.bold)
                    
                    // Ratings
                    
                    RatingView(recipe: recipe)
                    
                    // Cooking
                    
                    CookingView(recipe: recipe)
                        .font(.system(.body, design: .serif))
                    
                    // Ingrediens
                    
                    Text("Ingrediens")
                        .modifier(TitleModifier())
                    
                    VStack {
                        ForEach(recipe.ingredients, id: \.self) { item in
                            VStack(alignment: .leading) {
                                Text(item)
                                    .font(.footnote)
                                    .multilineTextAlignment(.leading)
                                
                                Divider()
                            } //: VStack
                        } // Loop
                    } //: Vstack
                    
                    // Instructions
                    Text("Instructions")
                        .modifier(TitleModifier())
                    
                    VStack(alignment: .center, spacing: 16) {
                        ForEach(recipe.instructions, id: \.self) { item in
                            VStack(alignment: .center) {
                                Image(systemName: "chevron.down.circle")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 42, height: 42, alignment: .center)
                                    .foregroundColor(Color("ColorGreenAdaptive"))
                                    .fontWeight(.ultraLight)
                                    .imageScale(.large)
                                Text(item)
                                    .lineLimit(nil)
                                    .font(.system(.subheadline, design: .serif))
                                    .multilineTextAlignment(.center)
                                    .frame(minHeight: 100)
                            } //: VStack
                        }
                    } // Loop
                } // Group
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
            } //: Vstack
        } //: ScrollView
        .edgesIgnoringSafeArea(.top)
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipe: recipes[0])
    }
}
