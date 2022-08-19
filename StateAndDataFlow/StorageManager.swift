//
//  StorageManager.swift
//  StateAndDataFlow
//
//  Created by Pavel Naumov on 19.08.2022.
//

import SwiftUI

class StorageManager {
    
    static let shared = StorageManager()
    
    @AppStorage("user") private var userData: Data?
    
    private init() {}
    
    func saveUser(user: User) {
        userData = try? JSONEncoder().encode(user)
    }
    func loadUser() -> User {
        guard let user = try? JSONDecoder().decode(User.self, from: userData ?? Data()) else { return User() }
        return user
    }
    func deleteData(userManager: UserManager) {
        userManager.user.isRegistered = false
        userManager.user.name = ""
        userData = nil
    }
}
