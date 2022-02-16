//
//  MainTabBar.swift
//  VK_SwiftUI
//
//  Created by LACKY on 16.02.2022.
//

import SwiftUI

struct MainTabBarView: View {
    
    @State private var selection = 0
    
    var body: some View {
        TabView (selection: $selection) {
            
            NewsView()
                .tabItem {
                    Image(systemName: "newspaper")
                    Text("Новости")
                }.tag(0)
            
            FriendsView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Друзья")
                }.tag(1)
            
            GroupsView()
                .tabItem {
                    Image(systemName: "rectangle.fill.on.rectangle.fill")
                    Text("Группы")
                }.tag(2)
        }.accentColor(.red)
    }
}

struct MainTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabBarView()
    }
}
