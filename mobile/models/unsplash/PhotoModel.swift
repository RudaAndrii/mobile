//
//  Photo.swift
//  mobile
//
//  Created by Andrii on 1/23/21.
//

import Foundation

struct PhotoModel: Decodable, Identifiable {
    var id: String
    var altDescription: String? = ""
    var urls: [String: String]
    var user: UserModel
    
    enum CodingKeys: String, CodingKey {
        case id
        case altDescription = "alt_description"
        case urls
        case user 
    }
}
