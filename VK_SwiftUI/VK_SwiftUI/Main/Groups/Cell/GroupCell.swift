//
//  GroupCell.swift
//  VK_SwiftUI
//
//  Created by LACKY on 19.02.2022.
//

import SwiftUI
import Kingfisher

struct GroupCell: View {
    
    let group: GroupModel
    
    var body: some View {

        HStack {
            AvatarBuilder{
                KFImage(URL(string: group.photo100))
            }
            
            NameTextBuilder {
                Text(group.name)
            }
        }
        
    }
}
