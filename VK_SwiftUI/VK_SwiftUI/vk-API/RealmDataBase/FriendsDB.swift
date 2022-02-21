//
//  FriendsDB.swift
//  VK_SwiftUI
//
//  Created by LACKY on 20.02.2022.
//

import Foundation
import RealmSwift


final class FriendsDB {
    
    init() {
        Realm.Configuration.defaultConfiguration = Realm.Configuration(schemaVersion: 10)
    }
    
    func save(_ items: [FriendModel]) {
        let realm = try! Realm()
        
        do {
            try! realm.write {
                realm.add(items)
            }
        }
    }
    
    func load() -> Results<FriendModel> {
        
        let realm = try! Realm()
        let friends: Results<FriendModel> = realm.objects(FriendModel.self)
        
        return friends
    }
    
    func delete(_ items: [FriendModel]) {
        let realm = try! Realm()
        try! realm.write {
            realm.delete(items)
        }
    }
}
