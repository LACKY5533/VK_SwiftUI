//
//  GroupsView.swift
//  VK_SwiftUI
//
//  Created by LACKY on 12.02.2022.
//

import SwiftUI

struct GroupsView: View {
    var body: some View {
        NavigationView {
            RootGroupsView()
                .navigationBarTitle(Text("Группы"))
        }
    }
}

struct RootGroupsView: View {
    var body: some View {
        ZStack {
            List(0..<3) {item in
                HStack {
                    AvatarBuilder {
                        Image("Avatar")
                    }
                    NameTextBuilder {
                        Text("название группы")
                    }
                }.listRowBackground(Color.clear)
            }.background(Color(.blue))
        
        }
    }
}


struct GroupsView_Previews: PreviewProvider {
    static var previews: some View {
        GroupsView()
    }
}
