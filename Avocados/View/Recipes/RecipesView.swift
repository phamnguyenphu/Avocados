//
//  RecipesView.swift
//  Avocados
//
//  Created by Pham Nguyen Phu on 19/04/2023.
//

import SwiftUI

struct RecipesView: View {
    // MARK: - PROPERTY
    
    @State private var isScrollTop: Bool = false
    @State private var isAnimating: Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        ScrollViewReader { value in
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    // MARK: - Header
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 0) {
                            ForEach(headers) { item in
                                HeaderView(header: item)
                            }
                        } //: HStack
                    } //: ScrollView
                    .id(1)
                    
                    Group {
                        // MARK: - DISHES
                        
                        Text("Avocado Dishes")
                            .modifier(TitleModifier())
                        
                        DishesView()
                            .frame(maxWidth: 640)
                        
                        // MARK: - FACTS
                        
                        Text("Avocado Facts")
                            .modifier(TitleModifier())
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 60) {
                                ForEach(facts) { item in
                                    FactsView(fact: item)
                                }
                            }
                            .padding(.leading, 60)
                            .padding(.trailing, 20)
                        }
                        
                        // MARK: - RECIPES
                        
                        Text("Avocado Recipes")
                            .modifier(TitleModifier())
                        
                        ScrollView(.vertical, showsIndicators: false) {
                            ForEach(recipes) { item in
                                VStack(alignment: .center, spacing: 20) {
                                    CardView(recipe: item)
                                }
                            }
                            .frame(maxWidth: 640)
                        }
                    } //: Group
                    .opacity(isAnimating ? 0.0 : 1.0)
                    
                    // MARK: - Footer
                    
                    VStack(alignment: .center, spacing: 20) {
                        Text("All about Avocados")
                            .modifier(TitleModifier())
                        
                        Text("Everything you wanted to know about avocados but were too afraid to ask")
                            .font(.system(.body, design: .serif))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.gray)
                            .frame(minHeight: 60)
                    } //: VStack
                    .frame(maxWidth: 640)
                    .padding()
                    .padding(.bottom, 85)
                } //: VStack
                .onAppear {
                    isAnimating = true
                    withAnimation(.easeIn(duration: 0.75)) {
                        isAnimating.toggle()
                    }
                }
            } // ScrollView
            .onAppear {
                isScrollTop = true
                if isScrollTop {
                    value.scrollTo(1)
                }
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.title, design: .serif))
            .fontWeight(.bold)
            .foregroundColor(Color("ColorGreenAdaptive"))
            .padding()
    }
}

struct RecipesView_Previews: PreviewProvider {
    static var previews: some View {
        RecipesView()
    }
}
