//
//  ContentView.swift
//  Avocados
//
//  Created by Pham Nguyen Phu on 18/04/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("tabicon-avocado")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
