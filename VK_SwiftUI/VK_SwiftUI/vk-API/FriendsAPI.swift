//
//  FriendsAPI.swift
//  VK_SwiftUI
//
//  Created by LACKY on 20.02.2022.
//

import Foundation
import Alamofire

final class FriendsAPI {
    
    let baseURL = "https://api.vk.com/method"
    let token = Account.shared.token
    let userId = Account.shared.userId
    let version = "5.81"
    
    func getFriends(completion: @escaping([FriendModel])->()) {
        
        let method = "/friends.get"
        
        let parameters: Parameters = [
            "user_id": userId,
            "order": "name",
            "fields": "photo_50, photo_100",
            "count": 100,
            "access_token": token,
            "v": version
        ]
        
        let url = baseURL + method
        
        AF.request(url, method: .get, parameters: parameters).responseJSON { response in

            guard let data = response.data else { return }
            debugPrint(response.data as Any)
            
            do {
                
                let friendsJSON = try JSONDecoder().decode(FriendsJSON.self, from: data)
                let friends: [FriendModel] = friendsJSON.response.items
                completion(friends)
                
            } catch {
                print(error)
            }
        }
    }
}
