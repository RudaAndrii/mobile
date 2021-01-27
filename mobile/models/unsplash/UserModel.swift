//
//  User.swift
//  mobile
//
//  Created by Andrii on 1/23/21.
//

import Foundation

struct UserModel: Decodable {
    let id: String
    let username: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case username
    }
}
