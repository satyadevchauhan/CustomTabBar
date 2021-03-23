//
//  TabBarView.swift
//  CustomTabBar
//
//  Created by Satyadev Chauhan on 23/03/21.
//

import SwiftUI

struct TabBarView: View {
    
    var tabs: [TabBarItem]
    @Binding var selectedTab: TabBarItem
    
    var body: some View {
        
        HStack(spacing: 0) {
            ForEach(tabs, id: \.self) { tab in
                TabBarItemView(type: tab, selectedTab: $selectedTab)
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(20)
        .padding(.horizontal)
        .padding(.horizontal)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
