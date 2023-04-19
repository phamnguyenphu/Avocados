//
//  AvocadosView.swift
//  Avocados
//
//  Created by Pham Nguyen Phu on 19/04/2023.
//

import SwiftUI

struct AvocadosView: View {
    // MARK: - PROPERTY

    @State private var pulsateAnimation: Bool = false

    // MARK: - BODY

    var body: some View {
        VStack {
            Spacer()
            Image("avocado")
                .resizable()
                .scaledToFill()
                .frame(width: 240, height: 240, alignment: .center)
                .shadow(color: Color("ColorBlackTransparentDark"), radius: 12, x: 0, y: 8)
                .scaleEffect(pulsateAnimation ? 1 : 0.9)
                .opacity(pulsateAnimation ? 1 : 0.9)
                .animation(.easeInOut(duration: 2).repeatForever(autoreverses: true), value: pulsateAnimation)
            VStack {
                Text("Avocados".uppercased())
                    .font(.system(size: 42, design: .serif))
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .shadow(color: Color("ColorBlackTransparentDark"), radius: 4, x: 0, y: 4)
                Text(avocadosContent)
                    .foregroundColor(Color("ColorGreenLight"))
                    .font(.system(.headline, design: .serif))
                    .multilineTextAlignment(.center)
                    .lineSpacing(8)
                    .frame(maxWidth: 640, minHeight: 120)
            } //: Vstack
            .padding()
            Spacer()
        } //: VStack
        .background(
            Image("background")
                .resizable()
                .scaledToFill()
        )
        .ignoresSafeArea()
        .onAppear {
            pulsateAnimation.toggle()
        }
    }
}

struct AvocadosView_Previews: PreviewProvider {
    static var previews: some View {
        AvocadosView()
    }
}
