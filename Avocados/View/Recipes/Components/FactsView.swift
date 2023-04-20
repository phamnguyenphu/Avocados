//
//  FactsView.swift
//  Avocados
//
//  Created by Pham Nguyen Phu on 20/04/2023.
//

import SwiftUI

struct FactsView: View {
    // MARK: - PROPERTY

    var fact: Fact

    // MARK: - BODY

    var body: some View {
        Text(fact.content)
            .padding(.leading, 50)
            .padding(.vertical)
            .frame(width: 305, height: 125, alignment: .center)
            .background(
                LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenLight")]), startPoint: .leading, endPoint: .trailing)
            )
            .cornerRadius(12)
            .lineLimit(6)
            .multilineTextAlignment(.leading)
            .font(.footnote)
            .foregroundColor(.white)
            .overlay(alignment: .leading) {
                Image(fact.image)
                    .resizable()
                    .frame(width: 66, height: 66, alignment: .center)
                    .clipShape(Circle())
                    .background(
                        Circle()
                            .stroke(Color("ColorGreenMedium"), style: .init(lineWidth: 8))
                            .frame(width: 66, height: 66)
                    )
                    .background(
                        Circle()
                            .fill(.white)
                            .frame(width: 80, height: 80)
                    )
                    .offset(x: -33)
            }
            .padding(.vertical)
    }
}

struct FactsView_Previews: PreviewProvider {
    static var previews: some View {
        FactsView(fact: facts[0])
            .previewLayout(.fixed(width: 400, height: 220))
            .padding()
    }
}
