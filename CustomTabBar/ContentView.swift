//
//  ContentView.swift
//  CustomTabBar
//
//  Created by Satyadev Chauhan on 23/03/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedTab: TabBarItem = .home
    
    var body: some View {
        ZStack(alignment: .bottom) {
            switch selectedTab {
            case .home:
                HomeView()
            case .favorite:
                FavoriteView()
            case .person:
                PersonView()
            case .settings:
                SettingView()
            }
            
            TabBarView(tabs: TabBarItem.allCases, selectedTab: $selectedTab)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
