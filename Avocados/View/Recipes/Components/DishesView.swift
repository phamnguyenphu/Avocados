//
//  DishesView.swift
//  Avocados
//
//  Created by Pham Nguyen Phu on 20/04/2023.
//

import SwiftUI

struct DishesView: View {
    var body: some View {
        // MARK: - PROPERTY

        // MARK: - BODY

        HStack(alignment: .center, spacing: 4) {
            // 1st column
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Image("icon-toasts")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Toasts")
                }
                Divider()
                HStack {
                    Image("icon-tacos")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Tacos")
                }
                Divider()
                HStack {
                    Image("icon-salads")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Salads")
                }
                Divider()
                HStack {
                    Image("icon-halfavo")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Spreads")
                }
            } //: VStack

            // 2nd Column
            VStack(alignment: .center, spacing: 4) {
                HStack {
                    Divider()
                }

                Image(systemName: "heart.circle")
                    .imageScale(.large)
                    .font(.title.weight(.ultraLight))

                HStack {
                    Divider()
                }
            }

            // 3rd Column
            VStack(alignment: .trailing, spacing: 4) {
                HStack {
                    Text("Guacamole")
                    Spacer()
                    Image("icon-guacamole")
                        .resizable()
                        .modifier(IconModifier())
                }
                Divider()
                HStack {
                    Text("Sandwich")
                    Spacer()
                    Image("icon-sandwiches")
                        .resizable()
                        .modifier(IconModifier())
                }
                Divider()
                HStack {
                    Text("Soup")
                    Spacer()
                    Image("icon-soup")
                        .resizable()
                        .modifier(IconModifier())
                }
                Divider()
                HStack {
                    Text("Smoothie")
                    Spacer()
                    Image("icon-smoothies")
                        .resizable()
                        .modifier(IconModifier())
                }
            } //: HStack
        } //: HStack
        .font(.system(.callout, design: .serif))
        .foregroundColor(.gray)
        .padding()
        .frame(maxHeight: 220)
    }
}

struct IconModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 42, height: 42, alignment: .center)
    }
}

struct DishesView_Previews: PreviewProvider {
    static var previews: some View {
        DishesView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
