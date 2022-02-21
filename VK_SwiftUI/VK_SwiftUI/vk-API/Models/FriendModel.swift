//
//  FriendModel.swift
//  VK_SwiftUI
//
//  Created by LACKY on 19.02.2022.
//

import Foundation
import RealmSwift

struct FriendsJSON: Codable {
    let response: FriendsResponse
}

// MARK: - Response
struct FriendsResponse: Codable {
    let count: Int
    let items: [FriendModel]
}

// MARK: - Item
class FriendModel: Object, Codable, Identifiable {
    
    @objc dynamic var id: Int = 0
    @objc dynamic var lastName: String = ""
    @objc dynamic var firstName: String = ""
    @objc dynamic var photo100: String = ""
    
    var fullName: String {
        firstName + " " + lastName
    }

    enum CodingKeys: String, CodingKey {
        case id
        case lastName = "last_name"
        case firstName = "first_name"
        case photo100 = "photo_100"
    }
    
    let baseURL = "https://api.vk.com/method"
    let token = Account.shared.token
    let userId = Account.shared.userId
    let version = "5.81"
}
