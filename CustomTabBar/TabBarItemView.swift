//
//  TabBarViewItem.swift
//  CustomTabBar
//
//  Created by Satyadev Chauhan on 23/03/21.
//

import SwiftUI

struct TabBarItemView: View {
    
    var type: TabBarItem
    @Binding var selectedTab: TabBarItem
    
    var isSelected: Bool {
        return selectedTab == type
    }
    
    var body: some View {
        GeometryReader.init(content: { geometry in
            Button(action: {
                selectedTab = type
            }, label: {
                VStack {
                    Image(systemName: type.imageName + (isSelected ? ".fill" : ""))
                    Text(type.title)
                }
            })
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .foregroundColor(isSelected ? .blue : .gray)
        })
        .frame(height: 50)
    }
}

struct TabBarViewItem_Previews: PreviewProvider {
    static var previews: some View {
        TabBarItemView(type: .home, selectedTab: .constant(.home))
    }
}
