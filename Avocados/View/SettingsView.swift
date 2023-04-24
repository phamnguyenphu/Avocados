//
//  SettingsView.swift
//  Avocados
//
//  Created by Pham Nguyen Phu on 19/04/2023.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTY

    @State private var enableNotification: Bool = true
    @State private var backgroundRefresh: Bool = false

    // MARK: - BODY

    var body: some View {
        VStack {
            VStack(alignment: .center, spacing: 5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)
                Text("Avocados".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenAdaptive"))
            } //: VStack
            .padding()

            Form {
                // SECTION 1
                Section {
                    Toggle("Enable notification", isOn: $enableNotification)
                    Toggle("Background refresh", isOn: $backgroundRefresh)
                } header: {
                    Text("General Settings")
                }

                // SECTION 2

                Section {
                    HStack {
                        Text("Product")
                        Spacer()
                        Text("Avocado Recipes")
                    }
                    HStack {
                        Text("Compactibility")
                        Spacer()
                        Text("iPhone & iPad")
                    }
                    HStack {
                        Text("Developer")
                        Spacer()
                        Text("Mason Pham")
                    }
                    HStack {
                        Text("Design")
                        Spacer()
                        Text("SwiftUI Masterclass")
                    }
                    HStack {
                        Text("Version")
                        Spacer()
                        Text("2.2.4")
                    }
                } header: {
                    Text("Application")
                }
            } //: Form
        }
        .frame(maxWidth: 640)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
