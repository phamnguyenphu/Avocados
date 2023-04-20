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
                    HeaderView()
                }

                // MARK: - Footer

                VStack(alignment: .center, spacing: 20) {
                    Text("All about Avocados")
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color("ColorGreenAdaptive"))
                        .padding()
                    Text("Everything you wanted to know about avocados but were too afraid to ask")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                }
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
            }
        }
    }
}

struct RecipesView_Previews: PreviewProvider {
    static var previews: some View {
        RecipesView()
    }
}
