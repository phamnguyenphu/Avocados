//
//  RecipesView.swift
//  Avocados
//
//  Created by Pham Nguyen Phu on 19/04/2023.
//

import SwiftUI

struct RecipesView: View {
    // MARK: - PROPERTY
    
    // MARK: - BODY
    
    var body: some View {
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
                
                // MARK: - DISHES
                
                Text("Avocado Dishes")
                    .modifier(TitleModifier())
                
                DishesView()
                    .frame(maxWidth: 640)
                
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
        } // ScrollView
        .ignoresSafeArea()
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
