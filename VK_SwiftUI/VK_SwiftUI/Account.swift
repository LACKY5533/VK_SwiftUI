//
//  Account.swift
//  VK_SwiftUI
//
//  Created by LACKY on 20.02.2022.
//

import UIKit
import SwiftKeychainWrapper

final class Account: ObservableObject {
    
    private init() {}
    
    static let shared = Account()
    
    var token: String {
            set {
                KeychainWrapper.standard.set(newValue, forKey: "userId")
            }
            get {
                return KeychainWrapper.standard.string(forKey:"userId") ?? ""
            }
    }
    var userId: Int {
        set {
            UserDefaults.standard.set(newValue, forKey: "userId")
        }
        get {
            return UserDefaults.standard.integer(forKey:"userId")
        }
    }
    
    @Published var isLoggedIn: Bool = false
    
    let clientID = "8018451"
    let version = "5.81"
}
