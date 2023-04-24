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
    
    @State private var pulsate: Bool = false
    @State private var isAnimating: Bool = false
    @Environment(\.dismiss) var dismiss
    
    // MARK: - BODY
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center) {
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()
                    .opacity(isAnimating ? 1 : 0.5)
                    .scaleEffect(isAnimating ? 1 : 1.2)
                   
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
                .opacity(isAnimating ? 1 : 0.2)
                .offset(y: isAnimating ? 0 : -10)
            } //: Vstack
        } //: ScrollView
        .edgesIgnoringSafeArea(.top)
        .overlay(alignment: .topTrailing) {
            Button {
                dismiss()
            } label: {
                Image(systemName: "chevron.down.circle.fill")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding(.trailing, 20)
                    .padding(.top, 20)
                    .shadow(radius: 5)
                    .opacity(pulsate ? 1 : 0.5)
                    .scaleEffect(pulsate ? 1.2 : 0.8)
                    .animation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true), value: pulsate)
            }
        }
        .onAppear {
            pulsate.toggle()
            withAnimation(.easeIn(duration: 0.75)) {
                isAnimating.toggle()
            }
        }
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipe: recipes[0])
    }
}
