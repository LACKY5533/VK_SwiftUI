//
//  FriendCell.swift
//  VK_SwiftUI
//
//  Created by LACKY on 19.02.2022.
//

import SwiftUI
import Kingfisher

struct FriendCell: View {
    
    let friend: FriendModel
    
    var body: some View {

        HStack {
            AvatarBuilder{
                KFImage(URL(string: friend.photo100))
            }
            
            NameTextBuilder {
                Text(friend.fullName)
            }
        }
        
    }
}
