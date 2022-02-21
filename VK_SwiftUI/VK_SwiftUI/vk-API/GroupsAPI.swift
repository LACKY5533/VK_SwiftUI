//
//  GroupsAPI.swift
//  VK_SwiftUI
//
//  Created by LACKY on 20.02.2022.
//

import Foundation
import Alamofire
import SwiftyJSON

final class GroupsAPI {
    
    let baseURL = "https://api.vk.com/method"
    let token = Account.shared.token
    let userId = Account.shared.userId
    let version = "5.81"
    
    func getGroups(completion: @escaping([GroupModel]) -> ()) {
        
        let method = "/groups.get"
        
        let parameters: Parameters = [
            "user_id": userId,
            "extended": 1,
            "count": 10,
            "access_token": token,
            "v": version
        ]
        
        let url = baseURL + method
        
        AF.request(url, method: .get, parameters: parameters).responseJSON { response in
            
            guard let data = response.data else { return }
            debugPrint(response.data as Any)
            
            do {

                let GroupsJSON = try JSONDecoder().decode(GroupsJSON.self, from: data)
                let mygroups: [GroupModel] = GroupsJSON.response.items
                completion(mygroups)
                
            } catch {
                print(error)
            }
        }
    }
}
