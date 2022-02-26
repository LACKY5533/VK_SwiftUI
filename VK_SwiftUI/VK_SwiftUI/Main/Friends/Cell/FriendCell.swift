//
//  FriendCell.swift
//  VK_SwiftUI
//
//  Created by LACKY on 19.02.2022.
//

import SwiftUI
import Kingfisher

struct FriendCell: View {
    
    @State private var opacity = 1.0
    @State private var degress = 0.0
    
    let friend: FriendModel
    
    var body: some View {

        HStack {
            AvatarBuilder{
                KFImage(URL(string: friend.photo100))
            }.padding()
                .onTapGesture {
                    self.opacity = 0.5
                    withAnimation(.linear(duration: 1)) {
                        self.opacity = 1
                        self.degress = 360
                    }
                    self.degress = 0
                }
            
            NameTextBuilder {
                Text(friend.fullName)
            }
        }.animation(.interpolatingSpring(mass: 1, stiffness: 1, damping: 0.5, initialVelocity: 10), value: 45)
        
    }
}
