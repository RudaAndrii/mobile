//
//  Photo.swift
//  mobile
//
//  Created by Andrii on 1/23/21.
//

import Foundation

struct PhotoModel: Decodable, Identifiable {
    let id: String
    let altDescription: String
    let urls: [String: String]
    let user: UserModel
    
    enum CodingKeys: String, CodingKey {
        case id
        case altDescription = "alt_description"
        case urls
        case user 
    }
}
