//
//  GroupsView.swift
//  VK_SwiftUI
//
//  Created by LACKY on 12.02.2022.
//

import SwiftUI

struct GroupsView: View {
    
    @ObservedObject var viewModel: GroupsViewModel
    
    init(viewModel: GroupsViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
            
        List(viewModel.groups) { group in
            GroupCell(group: group)
        }.onAppear(perform: viewModel.fetchGroups)
//        .navigationBarTitle("Группы", displayMode: .inline)
    }
}
