//
//  AppView.swift
//  Avocados
//
//  Created by Pham Nguyen Phu on 19/04/2023.
//

import SwiftUI
import UIKit

struct AppView: View {
    var body: some View {
        TabView {
            AvocadosView()
                .tabItem {
                    Image("tabicon-branch")
                        .renderingMode(.template)
                    Text("Avocados")
                }

            RecipesView()
                .tabItem {
                    Image("tabicon-book")
                        .renderingMode(.template)
                    Text("Recipes")
                }
            RipeningStagesView()
                .tabItem {
                    Image("tabicon-avocado")
                        .renderingMode(.template)
                    Text("Ripenings")
                }
            SettingsView()
                .tabItem {
                    Image("tabicon-settings")
                        .renderingMode(.template)
                    Text("Settings")
                }
        } //: TabView
        .tint(Color("ColorGreenAdaptive"))
        .onAppear {
            let tabBarAppearance = UITabBarAppearance()
            tabBarAppearance.configureWithDefaultBackground()
            UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
