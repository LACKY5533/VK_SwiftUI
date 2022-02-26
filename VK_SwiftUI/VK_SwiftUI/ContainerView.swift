//
//  ContainerView.swift
//  VK_SwiftUI
//
//  Created by LACKY on 16.02.2022.
//

import SwiftUI

struct ContainerView: View {
    
    @ObservedObject var shouldShowMainView = Account.shared
    
    var body: some View {
        NavigationView {
            HStack {
                VKAuthWebView()
                NavigationLink (
                    destination: MainTabBarView(),
                    isActive: $shouldShowMainView.isLoggedIn){}
            }
        }
    }
}
