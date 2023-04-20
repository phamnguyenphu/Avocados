//
//  HeaderView.swift
//  Avocados
//
//  Created by Pham Nguyen Phu on 20/04/2023.
//

import SwiftUI

struct HeaderView: View {
    // MARK: - PROPERTY
    
    @State private var showHeadline: Bool = false
    
    var header: Header
    
    var slideInAnimation: Animation {
        Animation.spring(response: 1.5, dampingFraction: 0.5, blendDuration: 0.5)
            .speed(1)
            .delay(0.25)
    }
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            Image(header.image)
                .resizable()
                .scaledToFill()
            HStack(spacing: 0) {
                Rectangle()
                    .fill(Color("ColorGreenLight"))
                    .frame(width: 5)
                VStack(alignment: .leading, spacing: 10) {
                    Text(header.headline)
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .shadow(radius: 3)
                    
                    Text(header.subheadline)
                        .font(.footnote)
                        .lineLimit(2)
                        .foregroundColor(.white)
                        .shadow(radius: 3)
                } //: VStack
                .padding(.horizontal, 20)
                .frame(width: 281, height: 105)
                .background(
                    Color("ColorBlackTransparentLight")
                )
            } //: HStack
            .frame(height: 105)
            .offset(x: -66, y: showHeadline ? 75 : 220)
            .animation(slideInAnimation, value: showHeadline)
            .onAppear {
                showHeadline.toggle()
            }
        } //: ZStack
        .frame(width: 480, height: 320, alignment: .center)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(header: headers[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
