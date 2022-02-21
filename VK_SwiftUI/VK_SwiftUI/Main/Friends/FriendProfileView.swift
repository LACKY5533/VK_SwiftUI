//
//  FriendProfile.swift
//  VK_SwiftUI
//
//  Created by LACKY on 16.02.2022.
//

import SwiftUI
import ASCollectionView
import Kingfisher

struct FriendProfileView: View {
    
    let friend: FriendModel
    
    @State var dataExample = (0 ..< 6).map { $0 }
    
    var body: some View {
        VStack (alignment: .leading) {
            HStack(spacing: 20) {
                ImageWhenOpenInFriendProfile {
                    KFImage(URL(string: friend.photo100))
            }
                        
                VStack(alignment: .leading) {
                    Text(friend.fullName)
                    Text("Что-то обо мне")
                        .font(.subheadline)
                        .foregroundColor(Color.gray)
                }
            }.frame(width: 300)
            Spacer()
            
            ASCollectionView(data: dataExample, dataID: \.self)
            { item, _ in
                Color.blue
                    .overlay(Text("\(item)"))
            }
            .layout
            {
                .grid(
                    layoutMode: .adaptive(withMinItemSize: 150),
                    itemSpacing: 10,
                    lineSpacing: 10,
                    itemSize: .absolute(200))
            }.padding()
        }
    }
}
