//
//  TabBarItem.swift
//  CustomTabBar
//
//  Created by Satyadev Chauhan on 23/03/21.
//

import Foundation

enum TabBarItem: CaseIterable {
    case home
    case favorite
    case person
    case settings
    
    var title: String {
        switch self {
        case .home:     return "Home"
        case .favorite: return "Favorite"
        case .person:   return "Person"
        case .settings: return "Settings"
        }
    }
    
    var imageName: String {
        switch self {
        case .home:     return "house"
        case .favorite: return "heart"
        case .person:   return "person"
        case .settings: return "gearshape"
        }
    }
}
