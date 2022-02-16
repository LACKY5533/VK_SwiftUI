//
//  FriendsView.swift
//  VK_SwiftUI
//
//  Created by LACKY on 12.02.2022.
//

import SwiftUI

struct FriendsView: View {
    var body: some View {
            RootFriendsView()
                .navigationBarTitle(Text("Друзья"))
    }
}

struct RootFriendsView: View {
    var body: some View {
        ZStack {
            List(0..<3) {item in
                NavigationLink (
                    destination: FriendProfileView(),
                    label: {
                        HStack {
                            AvatarBuilder {
                                Image("Avatar")
                            }
                            NameTextBuilder {
                                Text("имя")
                            }
                        }.listRowBackground(Color.clear)
                    })
            }.background(Color(.blue))
        
        }
    }
}

struct FriendsView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsView()
    }
}
