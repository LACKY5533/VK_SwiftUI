//
//  ContainerView.swift
//  VK_SwiftUI
//
//  Created by LACKY on 16.02.2022.
//

import SwiftUI

struct ContainerView: View {
    
    @State private var shouldShowMainView: Bool = false
    
    var body: some View {
        NavigationView {
            HStack {
                LoginView(isUserLoggedIn: $shouldShowMainView)
                NavigationLink (
                    destination: MainTabBarView(),
                    isActive: $shouldShowMainView){}
            }
        }
    }
}

struct ContainerView_Previews: PreviewProvider {
    static var previews: some View {
        ContainerView()
    }
}
