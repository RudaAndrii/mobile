//
//  UserService.swift
//  mobile
//
//  Created by Andrii on 1/27/21.
//

import Foundation

struct UserService {
    private static let dataService: UserDefaultsService = .shared
    private static let encoder = JSONEncoder()
    private static let decoder = JSONDecoder()
    
    
    private static let repositoryKey = "#users"
    
    static func getAll() -> [User]? {
        guard let allUsers = dataService.getArray(for: repositoryKey) else {
            return nil
        }
        return getDecodedUsers(from: allUsers)
    }
    
    static func save(_ newUser: User) {
        do {
            let newUserData = try encoder.encode(newUser)
            dataService.appendArray(newUserData, for: repositoryKey)
        } catch {
            print("Error while encoding user")
        }
    }
    
    private static func getDecodedUsers(from users: [Data]) -> [User] {
        do {
            return try users.map {
                user in try decoder.decode(User.self, from: user)
            }
        } catch {
            return []
        }
    }
}
