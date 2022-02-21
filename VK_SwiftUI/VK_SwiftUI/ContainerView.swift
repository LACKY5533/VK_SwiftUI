//
//  ContainerView.swift
//  VK_SwiftUI
//
//  Created by LACKY on 16.02.2022.
//

import SwiftUI

struct ContainerView: View {
    
    @State private var shouldShowMainView: Bool = true
    
    var body: some View {
        NavigationView {
            HStack {
                VKAuthWebView()
                NavigationLink (
                    destination: MainTabBarView(),
                    isActive: $shouldShowMainView){}
            }
        }
    }
}
