//
//  FriendsViewModel.swift
//  VK_SwiftUI
//
//  Created by LACKY on 20.02.2022.
//

import Foundation
import SwiftUI

class FriendsViewModel: ObservableObject {
    
    let friendsService: FriendsAPI
    
    @Published var friends: [FriendModel] = []
    
    init(friendsService: FriendsAPI) {
        self.friendsService = friendsService
    }
    
    public func fetchFriends() {
        friendsService.getFriends { [weak self] friends in
            self?.friends = friends
        }
    }
}
