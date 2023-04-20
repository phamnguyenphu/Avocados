//
//  FactsView.swift
//  Avocados
//
//  Created by Pham Nguyen Phu on 20/04/2023.
//

import SwiftUI

struct FactsView: View {
    var body: some View {
        Text("Avocado trees contain enzymes that prevent the fruit from ever ripening on the tree, allowing farmers to use the trees as storage devices for up to 7 months after they reach maturity.")
            .padding(.leading, 50)
            .padding(.vertical)
            .frame(width: 300, height: 125, alignment: .center)
            .background(
                LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenLight")]), startPoint: .leading, endPoint: .trailing)
            )
            .cornerRadius(12)
            .lineLimit(6)
            .multilineTextAlignment(.leading)
            .font(.footnote)
            .foregroundColor(.white)
            .overlay(alignment: .leading) {
                Image("avocado-fact-1")
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
    }
}

struct FactsView_Previews: PreviewProvider {
    static var previews: some View {
        FactsView()
            .previewLayout(.fixed(width: 400, height: 220))
            .padding()
    }
}
